# * append()
# * Method ini digunakan untuk menambah elemen baru ke dalam array pada posisi paling akhir
puts '*** append() ***'
arr = [1, 2, 3]
print "#{arr}\n"
arr.append(4) # menambah satu elemen
print "#{arr}\n"
arr.append(5, 6, 7, 8, 9, 10) # menambah banyak elemen sekaligus
print "#{arr}\n"
puts

# * at()
# * Method ini digunakan untuk mengakses elemen aray pada index tertentu.
puts '*** at() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr.at(5)
puts

# * clear()
# * Method ini digunakan untuk menghapus semua elemen array.
puts '*** clear() ***'
arr = [1, 2, 3, 4, 5]
puts arr.length
arr.clear
puts arr.length
puts

# * collect()
# * Method ini digunakan untuk menghasilkan array baru yang elemen-elemennya diambil dari array.
# * Method ini fungsinya mirip dengan method array map milik JavaScript.
puts '*** collect() ***'
bilangan = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
bil_kuadrat = bilangan.collect { |item| item**2 }
print "#{bil_kuadrat}\n"
puts

# * collect!()
# * Method ini sama serperti collect(), namun hasil perubahannya diterapkan ke objek yang memanggilnya (tidak membuat objek baru).
puts '*** collect!() ***'
bilangan = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print "#{bilangan}\n"
bilangan.collect! do |item|
  item**3
end
print "#{bilangan}\n"
puts

# * map()
# * Method ini fungsinya sama seperti method collect().
puts '*** map() ***'
bilangan = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print "#{bilangan}\n"
bil_kubik = bilangan.map do |item|
  item**3
end
print "#{bil_kubik}\n"
puts

# * map!()
# * Method ini fungsinya sama seperti method collect!().
puts '*** map!() ***'
bilangan = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print "#{bilangan}\n"
bilangan.map! do |item|
  item**2
end
print "#{bilangan}\n"
puts

# * compact()
# * Method ini digunakan untuk membuat salinan array dengan menghapus seluruh elemen yang bernilai nil.
# * Hasil salinan akan disimpan ke dalam objek baru.
puts '*** compact() ***'
arr = [1, nil, nil, 2, 3, 4, nil, nil, nil, nil, 5, nil]
print "#{arr}\n"
new_arr = arr.compact
print "#{new_arr}\n"
print "#{arr}\n"
puts

# * compact!()
# * Method ini fungsinya sama seperti compact(), namun hasil salinannya akan diterapkan ke objek pemanggil.
# * Jadi dapat dikatakan bahwa method ini berfungsi untuk menghapus elemen nil pada array.
puts '*** compact!() ***'
arr = [1, nil, nil, 2, 3, 4, nil, nil, nil, nil, 5, nil]
print "#{arr}\n"
arr.compact!
print "#{arr}\n"
puts

# * concat()
# * Method ini digunakan untuk menggabungkan seluruh elemen di dalam array lain ke dalam array yang memanggil method tersebut.
puts '*** concat() ***'
arr1 = [1, 2, 3]
arr2 = [4, 5, 6]
print "#{arr1}\n"
print "#{arr2}\n"
arr1.concat(arr2)
print "#{arr1}\n"
print "#{arr2}\n"
puts

# * count()
# * Method ini digunakan untuk menghitung banyaknya elemen dengan nilai tertentu di dalam array.
puts '*** count() ***'
arr = [10, 20, 10, 10, 20, 20, 30, 40, 50, 50, 50]
puts arr.count(10)
puts arr.count(20)
puts arr.count(30)
puts arr.count(4)
puts

# * delete()
# * Method ini digunakan untuk menghapus elemen dengan nilai tertentu.
puts '*** delete() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10]
print "#{arr}\n"
arr.delete(10)
print "#{arr}\n"
arr.delete(5)
print "#{arr}\n"
puts

# * delete_at()
# * Method ini digunakan untuk menghapus elemen pada index tertentu.
puts '*** delete_at() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8]
print "#{arr}\n"
arr.delete_at(5)
print "#{arr}\n"
puts

# * delete_if()
# * Method ini digunakan untuk menghapus elemen-elemen yang memenuhi kriteria tertentu.
puts '*** delete_if() ***'
arr = [10, 20, 10, 10, 20, 30, 40, 50, 50, 40, 30]
print "#{arr}\n"
arr.delete_if { |item| item < 30 }
print "#{arr}\n"
puts

# * each()
# * Method ini digunakan untuk melakukan iterasi terhadap array.
puts '*** each() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8]
arr.each do |item|
  puts "item ke-#{item}"
end
puts

# * each_index()
# * Method ini fungsinya sama seperti each(), namun yang diiterasi adalah index arraynya, bukan elemen arraynya seperti each().
puts '*** each_index() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8]
arr.each_index do |index|
  puts "index ke-#{index}"
end
puts

# * fill()
# * Method ini digunakan untuk mengisi seluruh elemen array dengan nilai tertentu atau dengan elemen-elemen yang diambil dari array lain.
puts '*** fill() ***'
# mengisi elemen-elemen array dengan nilai tertentu
puts '=' * 10
arr = Array.new(5)
print "#{arr}\n"
arr.fill(10)
print "#{arr}\n"
# mengisi elemen-elemen array dengan elemen-elemen dari array lain
puts '=' * 10
a = Array.new(5)
b = [1, 2, 3, 4, 5]
print "#{a}\n"
print "#{b}\n"
a.fill(0...b.length) do |i|
  b.at(i)
end
print "#{a}\n"
print "#{b}\n"
puts

# * find_index()
# * Method ini digunakan untuk mencari index dari elemen tertentu.
# * Jika elemen yang dicari tidak ditemukan, maka method ini akan mengembalikan nilai nil.
puts '*** find_index() ***'
arr = [1, 2, 3, 4, 5]
puts arr.find_index(1)
puts arr.find_index(3)
puts arr.find_index(9).nil?
puts

# * first() & first(n)
# * Method first() digunakan untuk mengambil elemen pertama array.
# * Method first(n) digunakan untuk mengambil n elemen pertama array.
puts '*** first() & first(n) ***'
arr = [1, 2, 3, 4, 5]
puts arr.first
print "#{arr.first(3)}\n"
puts

# * last() & last(n)
# * Method last() adalah kebalikan dari method first().
# * Method last(n) adalah kebalikan dari method first(n).
puts '*** last() & last(n) ***'
arr = [1, 2, 3, 4, 5]
puts arr.last
print "#{arr.last(3)}\n"
puts

# * max()
# * Method ini digunakan untuk mencari nilai maksimum yang terdapat pada array.
puts '*** max() ***'
arr = [10, 20, 30, 40, 50]
puts arr.max
puts

# * min()
# * Method ini adalah kebalikan dari method max().
puts '*** min() ***'
arr = [10, 20, 30, 40, 50]
puts arr.min
puts

# * pop() & pop(n)
# * Method pop() digunakan untuk menghapus elemen array yang terakhir.
# * Method pop(n) digunakan untuk menhapus n elemen array yang terakhir.
puts '*** pop() & pop(n) ***'
# menghapus elemen terakhir
puts '=' * 10
arr = [1, 2, 3, 4, 5]
print "#{arr}\n"
arr.pop
print "#{arr}\n"
# menghapus n elemen terakhri
puts '=' * 10
arr = [1, 2, 3, 4, 5]
print "#{arr}\n"
arr.pop(2)
print "#{arr}\n"
puts

# * prepend()
# * Method ini digunakan untuk menambah elemen baru ke dalam array pada posisi pertama.
puts '*** prepend() ***'
arr = [2, 3, 4, 5]
print "#{arr}\n"
arr.prepend(1)
print "#{arr}\n"
puts

# * push()
# * Method ini sama seperti prepend().
puts '*** push() ***'
arr = [1, 2, 3, 4, 5]
print "#{arr}\n"
arr.prepend(6)
print "#{arr}\n"
arr.prepend(7, 8, 9)
print "#{arr}\n"
puts

# * reject()
# * Method ini digunakan untuk menghapus elemen yang memenuhi kriteria tertentu.
# * Hasil yang diberikan method ini akan disimpan kedalam objek baru.
puts '*** reject() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_ganjil = arr.reject do |i|
  i.even?
end
print "#{arr}\n"
print "#{arr_ganjil}\n"
puts

# * reject!()
# * Method ini sama seperti reject(), hanya saja hasil yang diberikan akan diterapkan ke objek yang memanggilnya.
puts '*** reject!() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print "#{arr}\n"
arr.reject! do |i|
  i.even?
end
print "#{arr}\n"
puts

# * replace()
# * Method ini digunakan untuk mengganti elemen-elemen array dengan elemen-elemen dari array lain.
# * Array akan dikurangi atau ditambah jika dibutuhkan.
puts '*** replace() ***'
a = [1, 2, 3]
b = [10, 20, 30]
print "a = #{a}\n"
print "b = #{b}\n"
a.replace(b)
print "a = #{a}\n"
print "b = #{b}\n"
puts

# * reverse()
# * Method ini digunakan untuk membalik urutan array.
# * Perubahan yang dihasilkan oleh method ini akan disimpan ke objek baru.
puts '*** reverse() ***'
a = [1, 2, 3, 4, 5]
b = nil
print "a = #{a}\n"
print "b = #{b}\n"
b = a.reverse
print "a = #{a}\n"
print "b = #{b}\n"
puts

# * reverse!()
# * Method ini sama seperti reverse(), bedanya hasil perubahan yang dihasilkan dari method ini akan diterapkan ke objek yang memanggilnya.
puts '*** reverse!() ***'
a = [1, 2, 3, 4, 5]
print "a = #{a}\n"
a.reverse!
print "a = #{a}\n"
puts

# ! reverse_each()

# * select()
# * Method ini digunakan untuk mengambil elemen-elemen array yang memenuhi kriteria tertentu.
# * Hasil nya akan disimpan ke objek baru.
puts '*** select() ***'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b = a.select do |item|
  item.even?
end
print "a = #{a}\n"
print "b = #{b}\n"
puts

# * select!()
# * Method ini sama seperti select(), hanya saja hasilnya akan diterapkan ke objek yang memanggilnya.
puts '*** select!() ***'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print "#{a}\n"
a.select! do |i|
  i.odd?
end
print "#{a}\n"
puts

# * shift()
# * Method ini digunakan untuk menghapus elemen pertama pada array.
puts '*** shift() ***'
a = [1, 2, 3, 4, 5]
print "#{a}\n"
a.shift
print "#{a}\n"
a.shift
print "#{a}\n"
puts

# * shuffle()
# * Method ini digunakan untuk mengacak elemen array.
# * Hasil perubahannya akan disimpan ke objek baru.
puts '*** shuffle() ***'
a = [1, 2, 3, 4, 5]
b = a.shuffle
print "a = #{a}\n"
print "b = #{b}\n"
puts

# * shuffle!()
# * Method ini sama seperti shuffle(), hanya saja hasil perubahannya akan disimpan ke objek yang memanggilnya.
puts '*** shuffle!() ***'
a = [1, 2, 3, 4, 5]
print "a = #{a}\n"
a.shuffle!
print "a = #{a}\n"
puts

# * size()
# * Method ini sama seperti length dan count()
puts '*** size() ***'
a = [1, 2, 3, 4, 5]
puts a.size
puts

# ! slice()

# * slice!()
# * Method ini digunakan untuk membuang satu atau beberapa elemen dimulai dari index tertentu.
# * Untuk parameternya seperti ini: array.slice(index, jumlah_elemen_yang_dibuang: opsional)
puts '*** slice!() ***'
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print "#{arr}\n"
arr.slice!(4)
print "#{arr}\n"
arr.slice!(5, 2)
print "#{arr}\n"
puts

# * sort()
# * Method ini digunakan untuk mengurutkan elemen-elemen yang terdapat didalam array.
# * Hasilnya akan disimpan ke objek baru
puts '*** sort() ***'
a = [1, 2, 10, 100, 30, 40]
b = a.sort
print "a = #{a}\n"
print "b = #{b}\n"
puts

# * sort!()
# * Method ini sama seperti sort(), namun hasilnya akan disimpan ke objek yang memanggil method ini.
puts '*** sort!() ***'
a = [1, 2, 10, 100, 30, 40]
print "a = #{a}\n"
a.sort!
print "a = #{a}\n"
puts

# * sum()
# * Method ini digunakan untuk menjumlahkan nilai dari seluruh elemen array yang bertipe number.
puts '*** sum() ***'
arr = [1, 2, 3, 30, 40, 10, 100, 200]
arr = arr.sum
puts arr
puts

# * uniq()
# * Method ini digunakan untuk menghilangkan elemen-elemen yang duplikat didalam array.
# * Hasil perubahannya akan disimpan ke objek baru.
puts '*** uniq() ***'
a = [1, 2, 1, 1, 2, 3, 3, 4, 5, 'satu', 'satu', 'dua']
b = a.uniq
print "a = #{a}\n"
print "b = #{b}\n"
puts

# * uniq!()
# * Method ini sama seperti uniq!(), bedanya hasil perubahan akan diterapkan ke objek yang memanggil method ini.
puts '*** uniq!() ***'
a = [1, 2, 1, 1, 2, 3, 3, 4, 5, 'satu', 'satu', 'dua']
print "a = #{a}\n"
a.uniq!
print "a = #{a}\n"
puts

# * unshift()
# * Method ini sama seperti prepend() dan push(), yaitu untuk menambahkan elemen baru ke dalam array di posisi pertama.
puts '*** unshift() ***'
arr = [30, 40, 50]
print "#{arr}\n"
arr.unshift(20)
print "#{arr}\n"
arr.unshift(10)
print "#{arr}\n"
puts

# * values_at()
# * Method ini digunakan untuk mengambil elemen-elemen di dalam array berdasarkan index yang disertakan sebagai parameternya.
puts '*** values_at() ***'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b = a.values_at(0)
c = a.values_at(2, 3, 9, 7)
print "a = #{a}\n"
print "b = #{b}\n"
print "c = #{c}\n"
puts
