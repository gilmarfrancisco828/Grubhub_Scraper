from selenium import webdriver
import time
import json
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException

class browserDriver(object):
    def __init__(self, city=None, link=None):
        fprofile = webdriver.FirefoxProfile("firefox_profile")
        options = Options()
        options.add_argument('--headless')

        fprofile.set_preference("permissions.default.image", 2)
        self.driver = webdriver.Firefox(
            firefox_options=options, firefox_profile=fprofile)

        self.wait = WebDriverWait(self.driver, 30)

        if link is not None:
            self.visit(link)

    def visit(self, url):
        self.driver.get(url)

    def find_element(self, selector, wait=False, by=By.CSS_SELECTOR):
        try:
            if wait:
                self.wait.until(EC.presence_of_element_located((by, selector)))
            if by == By.CSS_SELECTOR:
                element = self.driver.find_element_by_css_selector(selector)
            elif by == By.XPATH:
                element = self.driver.find_element_by_xpath(selector)
            return element
        except (NoSuchElementException):
            # print("Element does not exist:"+selector)
            return None
        except (TimeoutException):
            # print("Timeout:"+selector)
            return None

    def find_elements(self, selector, wait=False, by=By.XPATH):
        try:
            if wait:
                self.wait.until(EC.presence_of_element_located((by, selector)))
            if by == By.CSS_SELECTOR:
                element = self.driver.find_elements_by_css_selector(selector)
            elif by == By.XPATH:
                element = self.driver.find_elements_by_xpath(selector)
            return element
        except (NoSuchElementException):
            # print("Element does not exist")
            return []
        except (TimeoutException):
            # print("Timeout")
            return []