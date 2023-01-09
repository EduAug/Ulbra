from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get('https://www.python.org')
driver.find_element(By.CSS_SELECTOR, ('#id-search-field')).send_keys("python")
driver.find_element(By.CSS_SELECTOR, ('#submit')).click()
driver.quit()