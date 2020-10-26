import time
from browserDriver import browserDriver
from selenium.webdriver.common.by import By
from concurrent.futures import ThreadPoolExecutor, wait
from PoolManager import DataBaseThread
import json
from time import sleep, time
import queue
CITIES_PAGE = "https://www.grubhub.com/delivery/cities"


class Cities(object):
    def __init__(self, driver: browserDriver):
        # driver.visit(link)
        self.br = driver

        close_modal = self.br.find_element(
            ".c-modal-close", wait=True, by=By.CSS_SELECTOR)
        if close_modal is not None:
            close_modal.click()
        while True:
            see_more = self.br.find_elements(
                ".browseCategory-list > a", by=By.CSS_SELECTOR)

            see_more = list(filter(lambda x: x.text == '+ See more', see_more))

            for sm in see_more:
                sm.click()

            if len(see_more) == 0:
                break

    def get_data(self):

        states_div = self.br.find_elements(
            ".browseList div.u-stack-y-8", by=By.CSS_SELECTOR)
        qtd_states = len(states_div)
        states = []
        i = 1
        for state_div in states_div:
            print("State", i, " of", qtd_states)

            state = {}
            state["id"] = i
            state['name'] = state_div.find_element_by_css_selector('h5').text
            state['cities'] = []

            for citie in state_div.find_elements_by_css_selector('div div a'):
                name = citie.text
                if name == '- Show less':
                    continue

                link = citie.get_attribute('href').split("/")[-1]
                if link == "javascript:void(0);":
                    print(name)
                state['cities'].append(
                    {"name": name, "link": link, "state_id": i})

            states.append(state)
            i += 1

        return states

    def create_pool(self, state, cities):
        # scrape and crawl
        futures = []
        with ThreadPoolExecutor() as executor:
            for citie in cities:
                futures.append(
                    executor.submit(self.get_citie, state, citie)
                )

        wait(futures)


if(__name__ == '__main__'):
    insert_queue = queue.Queue()
    driver = browserDriver(link=CITIES_PAGE)
    res = Cities(driver)
    start = time()
    data = res.get_data()

    states = [(state["id"], state["name"])for state in data]
    insert_queue.put(("INSERT_STATE", states))

    cities = []
    [cities.extend([list(citie.values())]) for state in data for citie in state["cities"]]
    insert_queue.put(("INSERT_CITY", cities))

    t = DataBaseThread(insert_queue)
    t.setDaemon(True)
    t.start()
    insert_queue.join()

    driver.driver.close()
    end = time()
    print("Time:", end-start, "s")