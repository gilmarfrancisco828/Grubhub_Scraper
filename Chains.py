from browserDriver import browserDriver
from selenium.webdriver.common.by import By
import json
from PoolManager import DataBaseThread
from time import sleep, time
import queue
CHAINS_PAGE = "https://www.grubhub.com/food/chains"

class Chains(object):
    def __init__(self, driver: browserDriver):
        self.br = driver

    def get_data(self):
        data = {}
        chains = self.br.find_elements(
            "a[data-testid='chain-accordion-sublink']", wait=True, by=By.CSS_SELECTOR)
        print("Num. of Chains:", len(chains))
        for chain in chains:
            data[chain.text] = {"link": chain.get_attribute('href').split("/")[-1]}
        return data

if(__name__ == '__main__'):
    start = time()
    insert_queue = queue.Queue()
    driver = browserDriver(link=CHAINS_PAGE)
    res = Chains(driver)
    data = res.get_data()

    chains = [[id["link"], name] for id, name in zip(data.values(), data.keys())]

    insert_queue.put(("INSERT_CHAIN", chains))

    t = DataBaseThread(insert_queue)
    t.setDaemon(True)
    t.start()
    insert_queue.join()

    f.close()
    driver.driver.close()

    end = time()
    print("Time:", end-start, "s")