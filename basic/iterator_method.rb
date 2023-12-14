# ! proses pengulangan elemen-elemen yang terdapat di dalam suatu collection (array dan hash) dapat dilakukan menggunakan method khusus yang disebut iterator.
# ! Method-method tersebut adalah:
# * each()
# * each_index()
# * collect()
# * map()
# * select()
# * reject()

# ! Method each()
# Bentuk umum:
=begin 
    # untuk array
    array.each() do |elemen|
        action
    end

    # untuk hash
    hash.each() do |key, value|
        action
    end
=end

# contoh penggunaannya pada array
puts "=" * 100

puts "*** Pengguaan method each() pada array ***"
data = [100, 200, 300, 400, 500]
data.each() do |elemen|
    puts elemen
end
puts "\n"

# contoh penggunaannya pada hash
puts "*** Pengguaan method each() pada hash ***"
data_diri = { name: 'Deo Subarno', age: 18, hobby: 'Coding' }
data_diri.each() do |key, value|
    puts "#{key} ==> #{value}"
end

# ! Method each_index()
# Method ini digunakan untuk melakukan pengulangan dan mengambil index-index elemen yang terdapat di dalam array.
# Method ini tidak didefinisikan pada class Hash.
# Bentuk umum:
=begin 
    array.each_index() do |index|
        action
    end
=end

# contoh penggunaan
puts "=" * 100

puts "*** Penggunaan method each_index() pada array ***"
data = [100, 200, 300, 400, 500]
data.each_index() do |index|
    puts "Elemen indeks ke-#{index} adalah #{data[index]}"
end

# ! Method collect()
# Method ini digunakan untuk melakukan aksi tertentu terhadap setiap elemen array dan mengembalikan hasilnya ke dalam array baru.
# Bisa dikatakan bahwa method collect() ini akan mereturn sebuah array yang elemennya merupakan hasil dari action nya.
# Bentuk umum:
=begin 
    array.collect() do |element|
        action
    end
=end

# contoh penggunaan
puts "=" * 100

puts "*** Penggunaan method collect() pada array ***"
bilangan_bulat = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
bilangan_kuadrat = bilangan_bulat.collect() do |element|
    element ** 2
end
print "Bilangan kuadrat dari #{bilangan_bulat} adalah #{bilangan_kuadrat}\n"

# ! Method map()
# Method ini merupakan sinonim dari method collect(). Bahkan cara penggunaannya pun sama persis dengan method collect().

# contoh penggunaan
puts "=" * 100

puts "*** Penggunaan method map() pada array ***"
bilangan_bulat = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
bilangan_kubik = bilangan_bulat.map() do |element|
    element ** 3
end
print "Bilangan kubik dari #{bilangan_bulat} adalah #{bilangan_kubik}\n"

# ! Method select()
# Method select() digunakan untuk memilih elemen-elemen di dalam array yang memenuhi kriteria tertentu.
# Method select() ini mirip sekali dengan method filter() yang ada di bahasa pemrograman Javascript.
# Method select() ini juga akan mereturn array baru seperti method map() dan collect().
# Bentuk umum:
=begin 
    array.select() do |element|
        action
    end
=end

# contoh penggunaan
puts "=" * 100

puts "*** Penggunaan method select() pada array ***"
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
bilangan_genap = array.select() do |element|
    element % 2 == 0
end
print "Bilangan genap dari array #{array} adalah #{bilangan_genap}\n"

# ! Method reject()
# Method ini merupakan kebalikan dari method select().
# Method ini digunakan untuk membuang elemen-elemen di dalam array yang memenuhi kriteria yang diberikan.
# Method reject() ini juga akan mereturn array baru seperti method select(), collect() dan map().
# Bentuk umum:
=begin 
    array.reject() do |element|
        action
    end
=end

# contoh penggunaan
puts "=" * 100

puts "*** Penggunaan method reject() pada array"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
bilangan_ganjil = arr.reject() do |element|
    element % 2 == 0
end
print "Bilangan ganjil dari array #{arr} adalah #{bilangan_ganjil}\n"