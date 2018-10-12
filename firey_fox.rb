require "selenium-webdriver"
require "json"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://google.com"

puts driver.title

driver.quit
