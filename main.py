import queue
import sqlite3
from RestaurantList import RestaurantList
from browserDriver import browserDriver
from Restaurant import Restaurant
from PoolManager import DataBaseThread
from time import time
from readProps import read_props
BASE_URL = "https://www.grubhub.com/"


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
    # print(restaurants[:2])
    return restaurants, cuisines, menus, menu_items


if __name__ == "__main__":
    start_with, items, _, all = read_props()
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

    driver = browserDriver(link=BASE_URL)
    restaurants = {}
    print("Getting Restaurants Links:")
    qtd_cities = len(cities)
    i = 1
    for citie in cities:
        print("\tCity ", i, "of", qtd_cities)
        driver.visit(BASE_URL+"delivery/"+citie)
        res = RestaurantList(driver)
        data = res.get_data()
        restaurants = {**restaurants, **data}
        i += 1

    final = []
    restaurants = list(restaurants.values())
    qtd_res = len(restaurants)
    print()
    i = 1
    print("Getting Restaurants Data:")
    for res in restaurants:
        print("\tRestaurant ", i, "of", qtd_res)
        r = Restaurant(driver, res)
        data = r.get_data()
        final.append(data)
        i += 1

    restaurants, cuisines, menus, menu_items = split_res_data(final)

    insert_queue.put(("INSERT_RESTAURANT", restaurants))
    insert_queue.put(("INSERT_MENU", menus))
    insert_queue.put(("INSERT_CUISINES_RESTAURANTS", cuisines))
    insert_queue.put(("INSERT_MENU_ITEM", menu_items))
    insert_queue.put(("DUMP_SQL", []))

    t = DataBaseThread(insert_queue)
    t.setDaemon(True)
    t.start()
    insert_queue.join()
    driver.driver.close()
    end = time()
    print("Time:", end-start, "s")
