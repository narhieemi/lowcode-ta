from selenium.webdriver import Chrome
from applitools.selenium import Eyes

eyes = Eyes()
driver = Chrome()

def set_api_key(key):
    eyes.api_key = key

def open_eyes_session():
    # Start the test and set the browser's viewport size to 1440x900.
    eyes.open(driver, "Outsystems Demo", "Outsystems Batch", {"width": 1440, "height": 900})

def navigate_to_page(url):
    # Navigate the browser to the "Movies" web-site.
    driver.get(url)

def take_screenshot_of_window():
    # Set baseline/checkpoint image.
    eyes.check_window('Checkpoint')

def close_eyes_session():
    eyes.close()
    eyes.abort()

def click_object():
    driver.find_element_by_link_text("https://personal-zl0nigog.outsystemscloud.com/OSMDb_EN/People.aspx?(Not.Licensed.For.Production)=").click()
