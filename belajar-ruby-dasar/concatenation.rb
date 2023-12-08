# ! Object string antara yang satu dengan yang lainnya dapat digabungkan meenggunakan operator + atau method concat().
# ! Penggabungan string menggunakan operator + atau method concat() ini disebut dengan concatenation.
# ! Concatenation ini akan menghasilkan string baru yang merupakan gabungan dari dua string yang digabungkan.

first_name = "Deo"
last_name = "Subarno"
full_name_1 = first_name + " " + last_name
full_name_2 = first_name.concat(" ").concat(last_name)

puts full_name_1
puts full_name_2