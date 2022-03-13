=begin 
  # Pada kali ini kita akan membahas tentang penggunaan konstanta dan method di dalam Ruby yang berkaitan dengan bilangan dan operasi bilangan.
=end

puts "=" * 43

#! Konstanta bilangan
puts "Konstanta Bilangan"
puts "\n"
=begin
  # Ruby menyediakan beberapa konstanta yang didefinisikan di dalam class Float dan modul Math.
  # Class Float memiliki tiga konstanta yaitu MIN, MAX dan EPSILON; sedangkan modul Math memiliki dua konstanta yaitu PI dan E.
=end

puts Float::MIN # 2.2250738585072014e-308
puts Float::MAX # 1.7976931348623157e+308
puts Float::EPSILON # 2.220446049250313e-16
puts Math::PI # 3.141592653589793
puts Math::E #2.718281828459045

puts "=" * 43

#! Method-method bilangan
puts "Method-method Bilangan"
puts "\n"

# Method abs()
# Method ini akan mengembalikan nilai absolut dari suatu bilangan bulat, float dan kompleks.

puts "Method abs()"
puts 5.abs() # 5
puts 5.0.abs() # 5.0
puts 5+0i.abs() # 5.0
puts "\n"

# Method ceil()
# Method ini digunakan untuk melakukan pembulatan bilangan ke atas
puts "Method ceil()"
puts 1.3.ceil() # 2
puts 9.1.ceil() # 10
puts 1.8.ceil() # 2
puts -1.3.ceil() # -1
puts "\n"

# Method floor()
# Method ini digunakan untuk melakukan pembulatan bilangan ke bawah
puts "Method floor()"
puts 1.8.floor() # 1
puts 9.9.floor() # 9
puts 1.4.floor() # 1
puts -1.3.floor() # -2
puts "\n"	

# Method round()
# Method ini digunakan untuk melakukan pembulatan bilangan ke yang terdekat
puts "Method round()"
puts 1.2.round() # 1
puts 2.8.round() # 3
puts 9.5.round() # 10
puts -1.3.round() # -1
puts -1.6.round() # -2
puts "\n"

# Method truncate()
# Method ini digunakan untuk memotong angka di belakang koma yang terdapat di dalam bilangan float. Hasil yang diperoleh akan bertipe Integer.
puts "Method truncate()"
puts 1.234.truncate() # 1
puts 32.4343.truncate() # 32
puts "\n"

# Method integer?()
# Method ini digunakan untuk memeriksa apakah suatu bilangan merupakan bilangan bulat atau bukan. Jika iya maka method ini akan mengembalikan nilai true, dan jika tidak maka method ini akan mengembalikan nilai false.
puts "Method integer?()"
puts 4.integer?() # true
puts 5.343.integer?() # false
puts "\n"

# Method to_i()
# Method ini digunakan untuk mengkonversi bilangan float maupun string ke bilangan bulat / Integer.
puts "Method to_i()"

string = "10"
puts string.class() 

int = string.to_i() # Konversi string menjadi integer
puts int.class()

puts "\n"

float = 82.4523
puts float.class()

int2 = float.to_i()
puts int2.class()

puts "\n"

# Method to_f()
# Method ini digunakan untuk mengkonversi bilangan bulat maupun string menjadi bilangan float.
puts "Method to_f()"

string = "10"
puts string.class() 

float = string.to_f() # Konversi string menjadi float
puts float.class()

puts "\n"

int = 82
puts int.class()

float2 = int.to_f()
puts float2.class()

puts "\n"

# Method even?()
# Method ini digunakan untuk memeriksa bilangan apakah merupakan bilangan genap atau bukan. Jika genap maka method ini akan mengembalikan nilai true, dan jika tidak maka method ini akan mengembalikan nilai false.
puts "Method even?()"
puts 4.even?() # true
puts 5.even?() # false
puts "\n"

# Method odd?()
# Method ini digunakan untuk memeriksa bilangan apakah merupakan bilangan ganjil atau bukan. Jika ganjil maka method ini akan mengembalikan nilai true, dan jika tidak maka method ini akan mengembalikan nilai false.
puts "Method odd?()"
puts 4.odd?() # false
puts 5.odd?() # true
puts "\n"

# Method zero?()
# Method ini digunakan untuk memeriksa bilangan apakah bernilai 0 atuau tidak. Jika iya maka method ini akan mengembalikan nilai true.
puts "Method zero?()"
puts 0.zero?() # true
puts 1.zero?() # false
puts 0.0000.zero?() # true
puts "\n"

# Method Kernel.rand()
# Method ini digunakan untuk mendapatkan bilangan acak. Jika dipanggil tanpa parameter, maka method Kernel.rand() akan menghasilkan nilai acak dalam rentang 0 - 1. Jika dipanggil dengan parameter, maka method Kernel.rand() akan menghasilkan nilai acak dalam rentang 0 - parameter yang diberikan.
puts "Method Kernel.rand() tanpa parameter"
puts Kernel.rand()
puts Kernel.rand()
puts Kernel.rand()
puts "Method Kernel.rand() dengan parameter"
puts Kernel.rand(10)
puts Kernel.rand(10)
puts Kernel.rand(10)

# Method Kernel.rand() juga dapat dipanggil tanpa menyertakan Kernel, seperti berikut :
puts "Method rand() tanpa menyertakan Kernel"
puts rand()
puts rand(300)
puts rand(50)
puts "\n"

puts "=" * 43
