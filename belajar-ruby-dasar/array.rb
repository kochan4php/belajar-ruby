# ! Didalam Ruby, Array pada dasarnya adalah sebuah variable yang dapat menyimpan banyak nilai sekaligus.
# ! Array pada ruby merupakan object hasil instansiasi dari class Array.
# ! Index array dimulai dari 0.
# ! Index elemen terakhir array dimulai dari -1.
# ! Array dibuat menggunakan tanda kurung siku buka dan kurung siku tutup ([]).
# ! contoh pembuatan variable array: nama_variable = [value1, value2, ...]

# contoh
fruits = ["apple", "kiwi", "manggo"]
puts fruits[0] # mengakses elemen pertama pada array fruits
puts fruits[-1] # mengakses elemen terakhir pada array fruits

# mendapatkan panjang dari array
puts fruits.length()
puts fruits.size()

# untuk mengubah value dari elemen array, kita bisa gunakan seperti ini: nama_variable[index] = new_value
puts "fruits[1] sebelum diubah: #{fruits[1]}"
fruits[1] = "avocado"
puts "fruits[1] setelah diubah: #{fruits[1]}"

# ! Array pada ruby dapat diisi oleh bermacam tipe data, seperti: nama_variable = [string, integer, boolean, ...]
# ! Array pada ruby juga dapat diisi oleh elemen yang bertipe array juga, yang nantinya akan membentuk array multi dimensi.

# contoh
multi_type = ["Deo Subarno", 18, true]
array_multi_dimension = [
    ["Deo Subarno", 18, true],
    ["Farhan Kebab", 21, true],
    ["Andi Gusma", 18, true]
]

puts array_multi_dimension[0][0] # mengakses nama pada elemen array yang pertama
puts array_multi_dimension[1][0] # mengakses nama pada elemen array yang kedua
puts array_multi_dimension[2][0] # mengakses nama pada elemen array yang ketiga