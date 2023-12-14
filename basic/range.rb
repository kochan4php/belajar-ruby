# ! Tipe Range menyatakan object berupa rentang atau jangkauan.
# ! Tipe Range dapat dibuat menggunakan dua cara, yaitur menggunakan tanda titik yang ditulis dua kali (..) atau tanda titik yang ditulis tiga kali (...).
# ! Bentuk pertama (..) menciptakan rentang inklusif, sedangkan bentuk kedua (...) menciptakan rentang yang mengecualikan nilai tinggi yang diberikan.

# contoh
range_1 = 1..5
range_2 = 1...5

puts "range_1: #{range_1}"
for i in range_1
    puts i
end

puts "range_2: #{range_2}"
for i in range_2
    puts i
end

# ! Untuk memeriksa apakah suatu nilai merupakan anggota dari rentang atau tidak, kita dapat menggunakan method member?(value) dan method include?(value).

# contoh
puts range_1.member?(5)
puts range_2.include?(5)