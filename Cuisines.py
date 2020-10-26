from browserDriver import browserDriver
from selenium.webdriver.common.by import By
from PoolManager import DataBaseThread
import json
from concurrent.futures import ThreadPoolExecutor, wait
from time import sleep, time
import queue
COUSINES_PAGE = "https://www.grubhub.com/delivery/cuisine"


class Cuisines(object):
    def __init__(self, driver: browserDriver):
        self.br = driver

    def get_data(self):
        data = {}
        cuisines = self.br.find_elements(
            "//div[@class='browseCategory-list']/div/a", wait=True, by=By.XPATH)
        for cuisine in cuisines:
            data[cuisine.text] = {
                "link": cuisine.get_attribute('href').split("/")[-1]}
        return data


def get_cuisine_data(data, cuisine, insert_queue):
    data[cuisine.text] = {"link": cuisine.get_attribute('href').split("/")[-1]}
    insert_queue.put(
        ("INSERT_CUISINE", [data[cuisine.text]["link"], cuisine.text]))


if(__name__ == '__main__'):
    insert_queue = queue.Queue()

    start = time()

    driver = browserDriver(link=COUSINES_PAGE)
    res = Cuisines(driver)

    data = res.get_data()
    data = [(data[name]["link"], name) for name in data]
    insert_queue.put(("INSERT_CUSINE", data))

    t = DataBaseThread(insert_queue)
    t.setDaemon(True)
    t.start()
    insert_queue.join()

    driver.driver.close()
    end = time()
    print("Time:", end-start)
