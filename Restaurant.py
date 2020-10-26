from browserDriver import browserDriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
import json
from time import time
BASE_RES_PAGE = "https://www.grubhub.com/restaurant/"
BASE_IMG_URL = "https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_100,h_100,f_auto,fl_lossy,q_80,c_fit/"
class Restaurant(object):
    def __init__(self, driver: browserDriver, link):
        driver.visit(link)
        self.br = driver

    def get_data(self):
        data = {}
        link = self.br.driver.current_url.split("restaurant")[-1]
        data["link"] = link

        id = int(link.split("/")[-1])
        data["id"] = id
        address = self.br.find_element(
            '.restaurantAbout-info-address', wait=True, by=By.CSS_SELECTOR)
        data['address'] = address.text if address is not None else None
        address = data['address'].split("\n")
        data['address'] = address[0] + " ; " + address[1]

        name = self.br.find_element(
            ".ghs-restaurant-nameHeader", by=By.CSS_SELECTOR)
        data['name'] = name.text if name is not None else None

        img = self.br.find_element(
            "img.restaurantSummary-img", by=By.CSS_SELECTOR)
        data['img'] = img.get_attribute('src').split("c_fit")[-1] if img is not None else None

        phone = self.br.find_element(
            '.restaurantSummarySimplified-address span:last-child')
        data['phone'] = phone.text if phone is not None else None

        percents = self.br.find_element(
            '.ratingsFacet-facetList', by=By.CSS_SELECTOR)
        if percents is not None:
            percents = [p.split(" ")[0] for p in percents.text.split("\n")]
            data['percent_food_good'] = int(percents[0])
            data['percent_on_time'] = int(percents[1])
            data['percent_order_correct'] = int(percents[2])
        else:
            data['percent_food_good'] = None
            data['percent_on_time'] = None
            data['percent_order_correct'] = None

        def split_prating(pr):
            pr = pr.text.split("\n")
            if len(pr) == 2:
                return len(pr[-1])
            else:
                return None

        price_rating = self.br.find_element(
            "div.price-scale.priceRating", by=By.CSS_SELECTOR)
        data['price_rating'] = split_prating(
            price_rating) if price_rating is not None else None

        num_ratings = self.br.find_element(
            "span[at-star-rating-text='true']", by=By.CSS_SELECTOR)
        data['num_ratings'] = int(num_ratings.text.split(
            " ")[0]) if num_ratings is not None else None

        cuisines = self.br.find_element(
            "div.restaurantAbout-details-cuisines", by=By.CSS_SELECTOR)
        data['cuisines'] = cuisines.text.split(
            ", ") if cuisines is not None else []
        data['cuisines'] = list(map(
            lambda x: [x.lower().replace(" ", "_"), id], data['cuisines']))

        chain = self.br.find_element(
            "a[at-restaurantabout-chainurl='true']", by=By.CSS_SELECTOR)
        data['chain'] = chain.get_attribute('href').split(
            "/")[-1] if chain is not None else None

        citie = self.br.find_element(
            ".restaurantBreadcrumbs ul li:nth-child(3) a", by=By.CSS_SELECTOR)
        data['citie_id'] = citie.get_attribute('href').split(
            "/")[-1] if citie is not None else None

        menus = self.br.find_elements(
            "ghs-restaurant-menu-section.restaurant-menu-section", by=By.CSS_SELECTOR)
        menus_obj = []

        csss = {
            "title": "div.menuItemNew-name",
            "description": "p[data-testid='description']",
            "price": "span[data-testid='menu-item-price']"
        }
        i = 1
        for menu in menus:
            menu_entrie = {}
            menu_entrie['menu_id'] = i
            menu_entrie['title'] = menu.find_element_by_css_selector(
                "div.menuSection-headerTitle h3").text
            if menu_entrie['title'] == 'Top Menu Items':
                continue

            menu_entrie['res_id'] = id
            menu_items = []

            for it in menu.find_elements_by_css_selector("span[data-testid='restaurant-menu-item']"):
                item = {"menu_id": i, "res_id": id}
                for css in csss:
                    try:
                        item[css] = it.find_element_by_css_selector(
                            csss[css]).text
                    except (NoSuchElementException):
                        item[css] = None

                item["price"] = float(
                    item["price"][1:]) if item["price"] is not None else None
                menu_items.append(item)
                # print(item["price"])
            menu_entrie['items'] = menu_items
            menus_obj.append(menu_entrie)
            i+=1

        data['menus'] = menus_obj

        return data


if(__name__ == '__main__'):
    link = BASE_RES_PAGE+link

    driver = browserDriver(link=BASE_RES_PAGE+link)
    res = Restaurant(driver, link)
    data = res.get_data()

    f = open(data["id"]+".json", "w")
    json.dump(data, f)
    f.close()

    driver.driver.close()
