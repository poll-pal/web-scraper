require "selenium-webdriver"
require "json"

def open_and_go(url)
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to url
end

def peace_out
    driver.quit
end