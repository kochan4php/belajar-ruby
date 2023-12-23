# * Method abs()
# * Method ini akan mengembalikan nilai absolut dari suatu bialngan Integer, Float dan Complex
puts '*** Method abs() ***'
puts 5.abs
puts 5.0.abs
puts 5 + 0i.abs

puts

# * Method ceil()
# * Method ini digunakan untuk melakukan pembulatan bilangan ke atas.
puts '*** Method ceil() ***'
puts 1.1.ceil
puts 2.3.ceil
puts 5.5.ceil

puts

# * Method floor()
# * Method ini digunakan untuk melakukan pembulatan bilangan ke bawah.
puts '*** Method floor() ***'
puts 9.9.floor
puts 8.5.floor
puts 5.1.floor

puts

# * Method round()
# * Method ini digunakan untuk melakukan pembulatan bilangan. Jumlah angka dibelakang koma dapat ditentukan sesuai kebutuhan.
puts '*** Method round() ***'
puts 3.14.round(1)
puts 3.14.round
puts 12.34567.round(3)

puts

# * Method truncate()
# * Method ini digunakan untuk memotong angka dibelakang koma yang terdapat di dalam bilangan Float. Hasil yang dikembalikan adalah bilangan bertipe Integer.
puts '*** Method truncate() ***'
a = 12.3456789
b = a.truncate
puts a
puts a.class
puts b
puts b.class

puts

# * Method integer?()
# * Method ini digunakan untuk memeriksa apakah suatu bilangan merupakan bilangan bulat atau bukan.
# * Jika ya, method ini akan mengembalikan nilai true, jika tidak maka akan mengembalikan nilai false.
puts '*** Method integer?() ***'
puts 123.integer?
puts 12.3.integer?

puts

# * Method to_i()
# * Method ini digunakan untuk mengkonversi bilangan Float atau bilangan Integer yang dibungkus didalam string menjadi bilangan bulat (Integer)
puts '*** Method to_i() ***'
num1 = 123.456.to_i
puts num1.class
num2 = '123'.to_i
puts num2.class

puts

# * Method to_f()
# * Method ini digunakan untuk mengkonversi bilangan Integer atau bilangan Float yang dibungkus didalam string menjadi bilangan rill (Float)
puts '*** Method to_f() ***'
num1 = 123.to_f
puts num1.class
num2 = '123.456'.to_f
puts num2.class

puts

# * Method even?()
# * Method ini digunakan untuk memeriksa bilangan apakah merupakan bilangan genap atau bukan.
# * Jika genap akan menghasilkan true, jika bukan akan menghasilkan false.
puts '*** Method even?() ***'
puts 1.even?
puts 2.even?

puts

# * Method odd?()
# * Method ini digunakan untuk memeriksa bilangan apakah merupakan bilangan ganjil atau bukan.
# * Jika ganjil akan menghasilkan true, jika bukan akan menghasilkan false.
puts '*** Method odd?() ***'
puts 1.odd?
puts 2.odd?

puts

# * Method zero?()
# * Method ini digunakan untuk memeriksa bilangan apakah bernilai 0 atau bukan.
# * Jika bernilai 0, maka akan menghasilkan true, jika bukan akan menghasilkan false.
puts '*** Method zero?() ***'
puts 0.zero?
puts 0.0.zero?
puts 1.zero?
puts 1.1.zero?

puts

# * Method Kernel.rand() atau rand()
# * Method ini digunakan untuk mendapatkan bilangan acak.
# * Jika method ini dipanggil tanpa parameter, maka method ini akan menghasilkan bilangan dalam rentang 0.0 <= x <= 1.0
# * Namun jika method ini dipanggil dengan parameter, maka method ini akan menghasilkan bilangan dalam rentang 0.0 <= x <= max.
puts '*** Method Kernel.rand() atau rand() ***'
puts Kernel.rand
puts Kernel.rand(120)
puts rand
puts rand(120)

puts
