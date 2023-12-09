# ! Pada bahasa pemrograman Ruby, terdapat operator membership atau operator keanggotaan.
# ! Operator membership atau keanggotaan digunakan untuk memeriksa apakah sebuah nilai terdapat dalam suatu kumpulan data atau rentang data tertentu.
# ! Keanggotaan dapat diperiksa menggunakan method 'member?()' atau 'include?()'.
# ! Untuk tipe data string, method 'member?()' tidak dapat digunakan, karena class String tidak mendefinisikan method 'member?()'.

# contoh
puts "*** CONTOH PADA RANGE ***"

range = 1..5
puts range.member?(3)
puts range.include?(0)
puts range.include?(5)

puts "\n"

puts "*** CONTOH PADA ARRAY ***"

arr = [1, 2, 3, 4, 5]
puts arr.member?(3)
puts arr.include?(9)

puts "\n"

puts "*** CONTOH PADA HASH ***"

hash = { satu: 1, dua: 2, tiga: 3, empat: 4, lima: 5 }
puts hash.member?(:tujuh)
puts hash.include?(:satu)

puts "\n"

puts "*** CONTOH PADA STRING ***"

string = "Ruby"
# puts string.member?("U") # Error
puts string.include?("u")

puts "\n"