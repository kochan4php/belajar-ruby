# ! Kita dapat melakukan perulangan pada tipe data array dan hash menggunakan perulangan for.
# ! Iterator pada bahasa pemrograman Ruby adalah sebuah konsep yang memungkinkan kita untuk mengulang (iterate) atau melakukan perulangan melalui elemen-elemen dalam suatu struktur data, seperti array atau hash, secara berurutan.
# ! Contoh iterator yang umum digunakan di Ruby adalah 'each'.
# ! Iterator lain yang sering digunakan juga pada Ruby adalah 'times', 'map', 'each_with_index', dan lain sebagainya.

# melakukan iterator pada array
arr = [1, 2, 3, 4, 5, 6, 7]

# iterator each
arr.each do |item|
    puts item
end

# iterator each_with_index
arr.each_with_index do |item, index|
    puts "index ke-#{index} adalah #{item}"
end

# iterator times
10.times do |item|
    puts "Ini bilangan ke-#{item}"
end

# melakukan iterator pada hash
data = {
    name: "Deo Subano",
    age: 18,
    hobby: "Coding",
}

# menggunakan each
data.each do |key, value|
    puts "#{key} = #{value}"
end