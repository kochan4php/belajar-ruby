# ! Dalam Ruby, tipe data string merupakan tipe data yang terdiri dari kumpulan beberapa karakter.
# ! String dapat dibentuk menggunakan 4 cara, yaitu: single quoted string, double quoted string, general delimited string, dan here document.
# ! Single quoted string merupakan string yang dibentuk dengan menggunakan tanda petik satu (').
# ! Double quoted string merupakan string yang dibentuk dengan menggunakan tanda petik dua (").
# ! General delimited string merupakan string yang diawali dengan tanda % dan diikuti dengan karakter tertentu (misalnya [ dan ] atau ( dan ) atau { dan }).
# ! Here document merupakan string  yang diawali dengan tanda << dan diikuti dengan karakter tertentu (misalnya EOF atau EOM). Here document biasanya digunakan untuk membuat string yang panjang / memiliki banyak baris.

# * Single quoted string
single_quoted_string = 'Hello'

# * Double quoted string
double_quoted_string = "World"

# * General delimited string
general_delimited_string_1 = %[Hello World]
general_delimited_string_2 = %(Hello World)
general_delimited_string_3 = %{Hello World}

# * Here document
here_document = <<EOF
string yang dibuat
menggunakan here document
EOF

# ===================================================

puts single_quoted_string
puts double_quoted_string
puts general_delimited_string_1
puts general_delimited_string_2
puts general_delimited_string_3
puts here_document

# ! Dalam Ruby, setiap karakter penyusun string dapat diindeks dari dua arah: kiri ke kanan dan kanan ke kiri.
# ! Jika kita mengindeks string dari kiri ke kanan, maka indeks karakter pertama adalah 0, indeks karakter kedua adalah 1, dan seterusnya.
# ! Jika kita mengindeks string dari kanan ke kiri, maka indeks karakter pertama adalah -1, indeks karakter kedua adalah -2, dan seterusnya.

# * contoh
s = "Ruby" # indeks dari kiri ke kanan: 0, 1, 2, 3 sedangkan indeks dari kanan ke kiri: -4, -3, -2, -1
puts s[0] # mengambil karakter pertama dari string s
puts s[-1] # mengambil karakter terakhir dari string s