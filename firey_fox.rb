require "selenium-webdriver"
require "json"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://www.elections.alaska.gov/Core/candidatelistgenr.php"
sleep 10
puts driver.title
list_items = driver.execute_script("return $('li')")
list_items.each do |li|
  puts li.text
end
driver.quit
