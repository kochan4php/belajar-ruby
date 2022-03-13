# String
# Kali ini kita akan membahas tentang penggunaan beberapa method yang di definisikan di dalam class String.

puts "\n"
puts "=" * 45
puts "\n"

#! Method capitalize()
# Method ini digunakan untuk mengubah huruf pertama dari suatu string menjadi huruf besar, dan sisanya huruf kecil. Hasil perubahannya akan di simpan ke objek baru. Dengan demikian, objek string yang lama nilainya tetap
puts "Method capitalize()"

string_1 = "hello world"
string_2 = string_1.capitalize()
puts string_2 # Hello world
puts string_1 # hello world

# pada kode di atas, string_1 nilainya tetap sama, dan hasil perbuahaan disimpan ke string_2.

puts "\n"
puts "=" * 45
puts "\n"

#! Method capitalize!()
# Method ini fungsinya sama seperti capitalize(). Perbedaanya, hasil perubahan akan disimpan ke objek string yang lama. Ini berarti bahwa method capitalize!() akan mengubah nilai objek lama dan tidak akan menciptakan objek baru.
puts "Method capitalize!()"

string_1 = "hello world"
puts string_1 # hello world
string_1.capitalize!()
puts string_1 # Hello world

puts "\n"
puts "=" * 45
puts "\n"

# Method casecmp()
# Method ini digunakan untuk membandingkan dua buah objek string tanpa mempedulikan penulisan karakter, apakah ditulis dalam huruf kapital atau tidak. Dalam method ini, karakter 'A' dan 'a' akan dianggap sama. Jika kedua objek yang dibandingkan sama, method ini akan mengembalikan nilai 0. Jika objek pemanggil method lebih kecil dari objek yang dibandingkan, method ini akan mengembalikan nilai -1. Jika objek pemanggil method lebih besar dari objek yang dibandingkan, method ini akan mengembalikan nilai 1.

puts "Method casecmp()"

puts "RUBY".casecmp("ruby") # 0
puts "ruby".casecmp("RUBY") # 0
puts "ABC".casecmp("def") # -1
puts "def".casecmp("ABC") # 1	

puts "\n"
puts "=" * 45
puts "\n"
