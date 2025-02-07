from selenium import webdriver
from robot.api.deco import keyword

@keyword
def get_console_logs():
    driver = webdriver.Chrome()
    driver.get('https://example.com')
    logs = driver.get_log('browser')
    driver.quit()
    return logs