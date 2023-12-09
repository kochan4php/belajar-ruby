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

# ! Array juga dapat ditambah elemen nya dari belakang menggunakan operator << atau method push(value)

# contoh
print "array fruits sebelum ditambah elemennya: #{fruits}\n"
fruits << "orange"
fruits.push("grape")
print "array fruits setelah ditambah elemennya: #{fruits}\n"

# ! Array juga dapat ditambah elemen dan ditempatkan di posisi yang diinginkan menggunakan method insert(index, value)

# contoh
print "array fruits sebelum ditambah elemennya dengan method insert: #{fruits}\n"
fruits.insert(3, "durian")
print "array fruits setelah ditambah elemennya dengan method insert: #{fruits}\n"

# ! Elemen pada Array juga dapat dihapus menggunakan method array yang bernama pop() dan delete_at(index).

# contoh method pop()
print "array fruits sebelum dihapus elemennya dengan method pop: #{fruits}\n"
fruits.pop() # akan menghapus elemen terakhir dari array
print "array fruits setelah dihapus elemennya dengan method pop: #{fruits}\n"

# contoh method delete_at(index)
print "array fruits sebelum dihapus elemennya dengan method delete_at: #{fruits}\n"
fruits.delete_at(2) # akan menghapus elemen array yang berada di index ke-2
print "array fruits setelah dihapus elemennya dengan method delete_at: #{fruits}\n"

# ! Kita juga bisa mengakses elemen-elemen yang ada pada array dengan menggunakan range

# contoh
print "#{fruits[1..2]}\n" # ["avocado", "durian"]
print "#{fruits[1...4]}\n" # ["avocado", "durian", "orange"]

# ! Menggabungkan array
# ! Kita bisa menggabungkan 2 array menggunakan operator +
# ! Kita juga bisa mengurangi array, yang akan mengakibatkan array pertama menghapus elemen di dalamnya yang terdapat juga di array kedua.
# ! Elemen pada array juga bisa diduplikasi menggunakan operator * dikombinasikan dengan nilai integer

# contoh menggabungkan array
a = [1, 2, 3]
b = [4, 5]
c = a + b # [1, 2, 3, 4, 5]
print "#{c}\n"

# contoh mengurangi array
array_1 = [2, 3, 4, 5, 6, 7]
array_2 = [1, 3, 4, 5, 7]
array_3 = array_1 - array_2 # [2, 6]
print "#{array_3}\n"

# contoh menduplikasi array
bilangan = [1, 2, 3]
bilangan_duplikat = bilangan * 3 # [1, 2, 3, 1, 2, 3, 1, 2, 3]
print "#{bilangan_duplikat}\n"

# ! Operator boolean pada array
# ! &: Operator & pada array akan mereturn array baru yang berisi elemen-elemen yang sama pada kedua array, tanpa duplikat.
# ! |: Operator | pada array akan mereturn array baru dengan menggabungkan kedua array dan menghapus duplikat.

# contoh untuk operator &
x = [2, 4, 5, 7]
y = [2, 5]
print "#{x & y}\n" # [2, 5]

# contoh untuk operator |
i = [1, 2, 3]
s = [4, 5, 6]
print "#{i | s}\n" # [1, 2, 3, 4, 5, 6]