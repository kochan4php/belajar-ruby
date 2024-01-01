dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.each_key do |key|
    puts key
  end
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts 'Do you want to lookup an area code based on city name? (Y/N)'
  answer = gets.chomp.downcase
  puts

  break if answer != 'y'

  get_city_names(dial_book)

  puts
  print 'Enter your selection city: '
  city = gets.chomp
  puts

  if !get_area_code(dial_book, city).nil?
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts 'You entered the invalid city'
  end

  puts
end
