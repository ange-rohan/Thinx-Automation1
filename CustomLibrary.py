from selenium import webdriver

class CustomLibrary:
    def get_console_logs(self, log_type='browser'):
        driver = webdriver.Chrome()
        logs = driver.get_log(log_type)
        return logs