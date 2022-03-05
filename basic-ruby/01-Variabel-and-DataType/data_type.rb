# Data Type 
require "bigdecimal"

# Number
# * Integer
desimal = 123
biner = 0b1111011
oktal = 0o173
heksadesimal = 0x7b

puts desimal, desimal.class
puts biner, biner.class
puts oktal, oktal.class
puts heksadesimal, heksadesimal.class
puts 100_000_000

# * Float
floatNumber = 98.43
floatExponen = 2.5e+5
puts floatNumber.class
puts floatExponen

# * BigDecimal
bigDecimal = BigDecimal("45.1234567890123456789")
puts bigDecimal
puts bigDecimal.class()

# * Complex
complex = 7+3i
complex2 = Complex(3, 10)

puts complex
puts complex.class
puts complex.real
puts complex.imag

puts complex2
puts complex2.class
puts complex2.real
puts complex2.imag

# * Rational
a = Rational(1, 2)

puts a
puts a.class
puts a.numerator # untuk mengambil pembilang
puts a.denominator # untuk mengambil penyebut

# * String
firstName = 'Deo'
lastName = "Subarno"
fullName = %[Deo Subarno]
fullName2 = %(Inuyama Aoi)
multipleLine = <<EOF
String yang dibuat menggunakan
here document
EOF
path = "c:\\test\\newdir"
path2 = 'c:\test\newdir'
puts path, path2

# * Boolean
a = true
b = false
puts a.class, b.class

# * Range
range1 = 1..5 # => same as 1 <= 5
range2 = 1...5 # => same as 1 < 5
puts range1.class, range2.class

for i in range1 do
  puts i
end

puts "\n"

for i in range2 do
  puts i
end

# * Array
mhs = ["Deo Subarno", "Inuyama Aoi", "Zero Two"]
matrix = [
  [1, 0, 1],
  [0, 1, 0],
  [1, 0, 1]
]

puts mhs[1], mhs[-2]
puts matrix

# * Hash
# hashName = {"key" => "value"}
books = {
  "judul" => "Pemrograman Ruby",
  "penerbit" => "Penerbit Informatika",
  "penulis" => "Budi Raharjo",
  "harga" => 75000
} 

# puts books["judul"], books.class

# * Symbol
# hashName = {:key => value}
handPhone = {
  :merk => "Xiaomi",
  :chipset => "Snapdragon 636"
}

puts handPhone[:chipset]

# * nil
def cari(nilai, arr)
  hasil = nil
  arr.each do |item|
    if item == nilai
      hasil = arr.index(item)
    end
  end

  return hasil
end


if $0 == __FILE__
  arr = [100, 200, 300, 400]
  # puts arr.index(200)
  index1 = cari(300, arr)

  if index1
    puts "300 ditemukan pada index ke #{index1}"
  else
    puts "300 tidak ditemukan array"
  end

  index2 = cari(999, arr)

  if index2
    puts "999 ditemukan pada index ke #{index2}"  
  else
    puts "999 tidak ditemukan dalam array"
  end
end