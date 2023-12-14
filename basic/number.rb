# ! Di Ruby, terdapat 5 jenis class / tipe data number, yaitu: Integer, Float, BigDecimal, Complex & Rational.
# ! Semua tipe data number di Ruby merupakan turunan dari class Numeric.

puts "=" * 90
# ========================================================================================================
puts "*** TIPE DATA INTEGER ***"
# * Integer
# Tipe data Integer digunakan untuk merepresentasikan bilangan bulat.
# Bilangan bulat dapat ditulis dalam berbagai format, yaitu: desimal, oktal, heksadesimal, dan biner.
desimal = 123
oktal = 0o173
biner = 0b1111011
heksadesimal = 0x7b

puts "desimal = #{desimal}"
puts "oktal = #{oktal}"
puts "biner = #{biner}"
puts "heksadesimal = #{heksadesimal}"

# Untuk bilangan bulat yang besar, kita dapat menggunakan underscore(_) sebagai pemisah angka agar lebih mudah dibaca.
jutaan = 1_000_000
puts "jutaan = #{jutaan}"
# ========================================================================================================
puts "=" * 90
# ========================================================================================================
puts "*** TIPE DATA FLOAT ***"
# * Float
# Tipe data Float digunakan  untuk merepresentasikan bilangan rill (mengandung angka dibelakang koma).
a = 2.4
puts "a = #{a}"

# Tipe data Float juga dapat ditulis dalam notasi eksponensial.
b = 2.5E+2
puts "b = #{b}"
# ========================================================================================================
puts "=" * 90
# ========================================================================================================
puts "*** TIPE DATA BIGDECIMAL ***"
# * BigDecimal
# Tipe data BigDecimal digunakan untuk merepresentasikan bilangan rill yang sangat besar / mempunyai angka dibelakang koma yang sangat banyak.
# Dengan menggunakan BigDecimal, kita dapat menghitung bilangan rill dengan presisi yang tinggi.
require 'bigdecimal'
PI = BigDecimal('3.141592653589793238462643383279502884197169399375105820974944592307816406286')
puts "PI = #{PI}"
# ========================================================================================================
puts "=" * 90
# ========================================================================================================
puts "*** TIPE DATA COMPLEX ***"
# * Complex
# Tipe data Complex digunakan untuk merepresentasikan bilangan kompleks.
# Bilangan kompleks terdiri dari dua bagian: bilangan real / rill dan bilangan imajiner (yang diwakili oleh angka imajiner 'i').
# Bentuk umum dari bilangan kompleks adalah 'a + bi' dan 'a - bi', dimana 'a' adalah bilangan real dan 'b' adalah bilangan imajiner.
complex_number = Complex(4, 5) # 4 + 5i
real_part = complex_number.real() # 4
imaginary_part = complex_number.imag() # 5

puts "Complex number = #{complex_number}"
puts "Real part of complex number = #{real_part}"
puts "Imaginary part of complex number = #{imaginary_part}"
# ========================================================================================================
puts "=" * 90
# ========================================================================================================
puts "*** TIPE DATA RATIONAL ***"
# * Rational
# Tipe data Rational digunakan untuk merepresentasikan bilangan pecahan seperti 1/2, 3/4, 5/6 dan seterusnya.
a = Rational(1, 2)
b = Rational(3, 4)
c = Rational(5, 6)

puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"

# Untuk mengambil nilai pembilang, kita dapat menggunakan method numerator().
# untuk mengambil nilai penyebut, kita dapat menggunakan method denominator().

puts "a.numerator = #{a.numerator}"
puts "a.denominator = #{a.denominator}"
puts "b.numerator = #{b.numerator}"
puts "b.denominator = #{b.denominator}"
puts "c.numerator = #{c.numerator}"
puts "c.denominator = #{c.denominator}"
# ========================================================================================================
puts "=" * 90
# ========================================================================================================