import queue
import sqlite3
from RestaurantList import RestaurantList
from browserDriver import browserDriver
from Restaurant import Restaurant
from PoolManager import DataBaseThread
from time import time
from threading import Thread, RLock
from readProps import read_props
lock = RLock()
NUM_WORKERS = 8
BASE_URL = "https://www.grubhub.com/"
url_queue_1 = queue.Queue()
url_queue_2 = queue.Queue()
restaurants = {}


def get_res_list(driver, q):
    global restaurants
    while True:
        url = q.get()
        print("Citie", url.split("/")[-1])
        driver.visit(url)
        res = RestaurantList(driver)
        data = res.get_data()
        with lock:
            restaurants = {**restaurants, **data}
        q.task_done()


def get_res_data(driver, q, final):
    while True:
        url = q.get()
        print("Restaurant", url.split("/")[-1])
        r = Restaurant(driver, url)
        data = r.get_data()
        final.append(data)
        q.task_done()


def split_res_data(restaurants):
    cuisines = []
    menus = []
    menu_items = []
    for res in restaurants:
        cuisines.extend(res.pop('cuisines', None))
        menus.extend(res.pop('menus', None))
    for m in menus:
        menu_items.extend(m.pop('items', None))
    menu_items = [list(mi.values()) for mi in menu_items]
    restaurants = [list(res.values()) for res in restaurants]
    menus = [list(me.values()) for me in menus]
    return restaurants, cuisines, menus, menu_items


if __name__ == "__main__":
    start_with, items, NUM_WORKERS, all = read_props()
    insert_queue = queue.Queue()
    conn = sqlite3.connect('database.db')
    start = time()

    if start_with == "STATE":
        states = []
        if all:
            sql = "SELECT id FROM states"
            cursor = conn.execute(sql)
            states = [row[0] for row in cursor]
        else:
            for item in items:
                sql = "SELECT id FROM states WHERE name='"+item+"'"
                cursor = conn.execute(sql)
                for row in cursor:
                    states.append(row[0])
        cities = []
        for state in states:
            sql = "SELECT id FROM cities WHERE state_id='"+str(state)+"'"
            cursor = conn.execute(sql)
            cities.extend([row[0] for row in cursor])

    if start_with == "CITIE":
        cities = []

        if all:
            sql = "SELECT id FROM cities"
            cursor = conn.execute(sql)
            states = [row[0] for row in cursor]
        else:
            for item in items:
                sql = "SELECT id FROM cities WHERE name='"+item+"'"
                cursor = conn.execute(sql)
                cities.extend([row[0] for row in cursor])

    drivers = [browserDriver() for i in range(NUM_WORKERS)]

    for i in range(NUM_WORKERS):
        worker = Thread(target=get_res_list, args=(drivers[i], url_queue_1,))
        worker.setDaemon(True)
        worker.start()

    print("Getting Restaurants Links:")
    qtd_cities = len(cities)
    i = 1
    for citie in cities:
        print(BASE_URL+"delivery/"+citie)
        url_queue_1.put(BASE_URL+"delivery/"+citie)

    url_queue_1.join()
    final = []
    res = list(restaurants.values())
    qtd_res = len(res)
    print(qtd_res)
    i = 1
    print("Getting Restaurants Data:")
    for i in range(NUM_WORKERS):
        worker = Thread(target=get_res_data, args=(
            drivers[i], url_queue_2, final,))
        worker.setDaemon(True)
        worker.start()

    for r in res:
        url_queue_2.put(r)

    url_queue_2.join()
    print(len(final))
    restaurants, cuisines, menus, menu_items = split_res_data(final)

    insert_queue.put(("INSERT_RESTAURANT", restaurants))
    insert_queue.put(("INSERT_MENU", menus))
    insert_queue.put(("INSERT_CUISINES_RESTAURANTS", cuisines))
    insert_queue.put(("INSERT_MENU_ITEM", menu_items))
    # insert_queue.put(("show", []))
    insert_queue.put(("DUMP_SQL", []))

    t = DataBaseThread(insert_queue)
    t.setDaemon(True)
    t.start()
    insert_queue.join()
    [driver.driver.close() for driver in drivers]
    end = time()
    print("Time:", end-start, "s")
