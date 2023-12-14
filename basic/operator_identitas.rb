# ! Operator identitas adalah operator yang digunakan untuk memeriksa apakah dua buah referensi / variable menunjuk ke satu alamat memory yang sama atau tidak.
# ! Method yang digunakan untuk memeriksa identitas dua buah referensi / variable adalah method 'equal?()'.
# ! Atau bisa juga menggunakan operator perbandingan Sama dengan (==).

# contoh
a = "Ruby"
b = "Ruby"
c = a

# menampilkan output alamat memory dari masing masing referensi / variable
puts "Alamat memory dari variable a: #{a.object_id()}"
puts "Alamat memory dari variable b: #{b.object_id()}"
puts "Alamat memory dari variable c: #{c.object_id()}"

# memeriksa apakah alamat memory yang digunakan sama dengan menggunakan operator perbandingan sama dengan (==)
puts "(a.object_id() == b.object_id()) => #{a.object_id() == b.object_id()}"
puts "(b.object_id() == c.object_id()) => #{b.object_id() == c.object_id()}"
puts "(a.object_id() == c.object_id()) => #{a.object_id() == c.object_id()}"

# memeriksa apakah alamat memory yang digunakan sama dengan menggunakan method equal?()
puts "a.equal?(b) ==> #{a.equal?(b)}"
puts "a.equal?(c) ==> #{a.equal?(c)}"
puts "b.equal?(c) ==> #{b.equal?(c)}"