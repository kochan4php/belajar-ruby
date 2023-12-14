# ! Operator perbandingan adalah operator yang digunakan untuk membandingkan dua buah nilai.
# ! Operator perbandingan akan menghasilkan nilai boolean (true atau false), kecuali untuk operator <=>.

# ! Macam-macam operator perbandingan
#* (==) => Sama dengan
#* (!=) => Tidak sama dengan
#* (>=) => Lebih besar atau sama dengan
#* (<=) => Kurang dari atau sama dengan
#* (>) => Lebih besar
#* (<) => Kurang dari
#* (<=>) => Menghasilkan nilai 1 jika operand pertama lebih besar dari operan kedua. Menghasilkan niali 0 jika operand pertama sama dengan operand kedua. Dan menghasilkan -1 jika operand pertama lebih kecil dari operand kedua.

# contoh
print "Masukkan bilangan pertama: "
a = gets().to_i()
print "Masukkan bilangan kedua: "
b = gets().to_i()

puts a == b
puts a != b
puts a >= b
puts a <= b
puts a > b
puts a < b
puts a <=> b