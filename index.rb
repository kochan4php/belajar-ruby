# Where is the main Ruby file located
puts $0
puts __FILE__

# Block
=begin
 * Block can be created in two ways : 
 * using {}
 * using do & end (do-end)
=end
3.times {puts "Hello Ruby"} # will print "Hello Ruby" 3 times
3.times {|i| puts "#{i} Hello Ruby"} # will print "{index} Hello Ruby" 3 times with index
3.times do
  puts "Hello Ruby in do-end keyword" # will print "Hello Ruby" 3 times
end
3.times do |i|
  puts "#{i} Hello Ruby in do-end keyword" # will print "{index} Hello Ruby in do-end keyword" 3 times with index
end

# Initialization & Finalization Block
=begin
 * For initialization using :  
 * BEGIN { #code for initialization }
 * For finalization using : 
 * END { #code for finalization }
=end
BEGIN {
  puts "Block inisialisasi dipangggil"
}

END {
  puts "Block finalisasi dipanggil"
}

puts "Main Program"

# output 
# Block inisialisasi dipangggil
# Main Program
# Block finalisasi dipanggil

# Read data from keyboard using gets() method (default include \n)
s = gets
puts s
puts s.class
puts s.length

# Read data from keyboard using chomp() / chop() for remove \n
s = gets().chomp()
puts s.length()
puts s.class()

s = gets().chop()
puts s.length()
puts s.class()

# Read data number from keyboard using to_i() to_f()
a = gets().to_i()
puts a 
puts a.class

a = gets().to_f()
puts a 
puts a.class

# Read data string
print "Masukkan nama anda : "
nama = gets().chomp()

puts "Hai #{nama}, selamat belajar pemrograman Ruby"

# Read data number
if $0 == __FILE__
  # Membaca data bilangan bulat
  print "Masukkan jumlah pengulangan : "
  integer = gets().to_i()
  integer.times do |index|
    print "#{index} "
  end

  # membaca data bilangan bulat
  print "\n\nMasukkan nilai a : "
  a = gets().to_f()
  print "\n\nMasukkan nilai b : "
  b = gets().to_f()
  puts "#{a} x #{b} = #{a * b}"
end

# Read character using $stdin.getc()
char = $stdin.getc
puts char
puts char.class