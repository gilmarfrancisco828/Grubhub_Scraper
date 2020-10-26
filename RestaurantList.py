import time
from browserDriver import browserDriver
from selenium.webdriver.common.by import By
from concurrent.futures import ThreadPoolExecutor, wait
import json
CITIE_PAGE = "https://www.grubhub.com/delivery/ct-amston"


class RestaurantList(object):
    def __init__(self, driver: browserDriver):
        # driver.visit(link)
        self.br = driver
        close_modal = self.br.find_element(
            ".c-modal-close", wait=True, by=By.CSS_SELECTOR)
        if close_modal is not None:
            close_modal.click()

    def see_more_click(self):
        see_more = self.br.find_element(
            "button[at-see-more-restaurants='true']", by=By.CSS_SELECTOR)
        if see_more is not None:
            see_more.click()
            return True
        else:
            return False

    def get_data(self):
        restaurants = {}
        while True:
            self.see_more_click()

            restaurants_div = self.br.find_elements(
                "div[at-restaurant-card='true']", wait=True, by=By.CSS_SELECTOR)
            # print(len(restaurants_div))
            for r in restaurants_div:
                link = r.find_element_by_css_selector(
                    'a.restaurant-name').get_attribute('href')
                # print(link)
                restaurants[int(link.split("/")[-1])] = link

            if not self.see_more_click():
                break

        return restaurants

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
    driver = browserDriver(link=CITIE_PAGE)
    res = RestaurantList(driver)
    start = time.time()
    data = res.get_data()
    end = time.time()
    print("Time:", end-start)
    f = open("restaurantes.json", "w")
    json.dump(data, f)
    f.close()
    driver.driver.close()
