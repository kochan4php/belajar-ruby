# string interpolation

day = "Sunday"

def tambah(a, b)
  return a + b
end

puts "without interpolation : "
puts "Hello " + day
puts "\n"

puts "with interpolation"
puts "Hello #{day}"
puts "\n"

# math operation
puts "8 x 6 is #{8 * 6}"
puts "\n"

# call function
puts "4 + 5 is #{tambah(4, 5)}"