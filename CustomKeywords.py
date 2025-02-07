from selenium import webdriver
from robot.api.deco import keyword

@keyword
def get_console_logs(url):
    options = webdriver.ChromeOptions()
    options.add_argument('--headless')
    driver = webdriver.Chrome(options=options)
    driver.get(url)
    driver.implicitly_wait(10)  # Wait for the page to load
    logs = driver.get_log('browser')
    driver.quit()
    return logs