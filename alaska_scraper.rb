require_relative "driver_helper"

def alaska
  driver.navigate.to "http://www.elections.alaska.gov/Core/candidatelistgenr.php"
  sleep 7
  puts driver.title
  output_json = {}
  list_items = driver.execute_script("return $('li')")
  # output = file.open("/Users/sankele/Documents/GitHub/web-scraper/out.json")
  i = 0;
  push_into_hash = false
  list_items.each do |li|
    if li.text.include? 'through the entire list.'
      push_into_hash = true
    end
    i+=1
    if push_into_hash
      output_json["line#{i}"] = li.text
    end
  end

  File.open("alaska.json","w") do |f|
    f.write(output_json.to_json)
  end
end



