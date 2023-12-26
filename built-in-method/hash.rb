# * clear()
# * Method ini digunakan untuk menghapus semua elemen hash.
puts '*** clear() ***'
person = { name: 'Deo', age: 18 }
puts person
person.clear
puts person
puts

# * delete()
# * Method ini digunakan untuk menghapus elemen hash dengan key tertentu
puts '*** delete() ***'
person = { name: 'Deo', age: 18 }
puts person
person.delete(:age)
puts person
puts

# * delete_if()
# * Method ini digunakan untuk menghapus elemen hash yang memenuhi kriteria tertentu.
puts '*** delete_if() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
puts hash
hash.delete_if do |key, _value|
  key.even? # bisa juga pake value nya untuk menentukan kondisi
end
puts hash
puts

# * each()
# * Method ini digunakan untuk melakukan iterasi pada elemen hash.
puts '*** each() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
hash.each do |key, value|
  puts "#{key} dibaca #{value}"
end
puts

# * each_key()
# * Method ini digunakan untuk melakukan iterasi terhadap key pada elemen hash.
puts '*** each_key() ***'
person = { name: 'Deo', age: 18 }
person.each_key do |key|
  puts key
end
puts

# * each_pair()
# * Method ini sama seperti each().
puts '*** each_pair() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
hash.each_pair do |key, value|
  puts "#{key} dibaca #{value}"
end
puts

# * each_value()
# * Method ini digunakan untuk melakukan iterasi terhadap value pada elemen hash.
puts '*** each_value() ***'
person = { name: 'Deo', age: 18 }
person.each_value do |key|
  puts key
end
puts

# * empty?()
# * Method ini digunakan untuk memeriksa isi dari suatu hash, apakah kosong atau tidak.
# * Jika kosong, method ini akan menghasilkan nilai true dan sebaliknya.
puts '*** empty?() ***'
person = { name: 'Deo' }
person2 = {}
puts person.empty?
puts person2.empty?
puts

# * fetch()
# * Method ini digunakan untuk menangkap elemen di dalam hash berdasarkan key tertentu.
# * Jika key yang dimaksud tidak ditemukan, maka method ini akan membangkitkan exception bertipe KeyError.
puts '*** fetch() ***'
person = { name: 'Deo' }
puts person.fetch(:name)
# puts person.fetch(:age) # fetch: key not found: : age (KeyError)
puts

# * has_key()
# * Method ini digunakan untuk memeriksa apakah suatu key terdapat didalam suatu hash atau tidak.
# * Jika ada, method ini akan mereturn nilai true, dan sebaliknya.
puts '*** has_key() ***'
person = { name: 'Deo' }
puts person.has_key?(:name)
puts person.has_key?(:age)
puts

# * has_value()
# * Method ini digunakan untuk memeriksa apakah suatu value terdapat didalam suatu hash atau tidak.
# * Jika ada, method ini akan mereturn nilai true, dan sebaliknya.
puts '*** hash_value() ***'
person = { name: 'Deo' }
puts person.has_value?('Deo')
puts person.has_value?('Kochan')
puts

# * invert()
# * Method ini digunakan untuk membalik urutan dari elemen hash.
# * Yaitu dari key menjadi value, dari value menjadi key.
# * Hasil perubahannya akan disimpan ke dalam objek baru.
puts '*** invert() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding' }
new_person = person.invert
puts person
puts new_person
puts

# * keys()
# * Method ini digunakan untuk mengambil list key yang terdapat pada suatu hash.
puts '*** keys() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding' }
puts "key #{person.keys}"
puts

# * length
# * Method ini digunakan untuk memperoleh jumlah elemen pada hash.
puts '*** length ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding' }
puts person.length
puts

# * merge()
# * Method ini digunakan untuk menggabungkan 2 hash menjadi satu.
# * Hasil proses penggabungannya akan disimpan ke objek yang baru.
puts '*** merge() ***'
hash1 = { 1 => 'satu', 2 => 'dua' }
hash2 = { 3 => 'tiga', 4 => 'empat' }
hash3 = hash1.merge(hash2)
puts hash1
puts hash2
puts hash3
puts

# * merge!()
# * Method ini sama seperti merge!(), tapi hasil penggabungannya akan diterapkan ke objek yang memanggil method ini.
puts '*** merge!() ***'
hash1 = { 1 => 'satu', 2 => 'dua' }
hash2 = { 3 => 'tiga', 4 => 'empat' }
puts "hash1 = #{hash1}"
puts "hash2 = #{hash2}"
hash1.merge!(hash2)
puts "hash1 = #{hash1}"
puts "hash2 = #{hash2}"
puts

# * reject()
# * Method ini digunakan untuk membuat hash yang elemen-elemennya diambil dari hash lain berdasarkan kondisi tertentu.
# * Elemen yang akan ditambahkan ke dalam hash penampung adalah elemen yang tidak memenuhi kriteria.
puts '*** reject() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
new_hash = hash.reject do |key, _value|
  key.even?
end
puts hash
puts new_hash
puts

# * reject!()
# * Method ini sama seperti reject(), namun hasil perubahannya akan diterapkan ke objek yang memanggil method ini.
puts '*** reject!() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
puts hash
hash.reject! do |key, _value|
  key.odd?
end
puts hash
puts

# * replace()
# * Method ini digunakan untuk mengganti elemen-elemen di dalam hash dengan elemen-elemen yang terdapat didalam hash lain.
puts '*** replace() ***'
hash1 = { 1 => 'satu', 2 => 'dua' }
hash2 = { 3 => 'tiga', 4 => 'empat' }
puts "hash1 = #{hash1}"
puts "hash2 = #{hash2}"
hash1.replace(hash2)
puts "hash1 = #{hash1}"
puts "hash2 = #{hash2}"
puts

# * select()
# * Method ini digunakan untuk membuat hash yang elemen-elemennya diambil dari hash lain berdasarkan kondisi tertentu.
# * Elemen yang akan ditambahkan ke dalam hash penampung adalah elemen yang memenuhi kriteria.
# * Method ini adalah kebalikan dari method reject()
puts '*** select() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
new_hash = hash.select do |key, _value|
  key.even?
end
puts "hash = #{hash}"
puts "new_hash = #{new_hash}"
puts

# * select!()
# * Method ini sama dengan select(), hanya saja hasil proses nya akan diterapkan ke objek yang memanggilnya.
puts '*** select!() ***'
hash = { 1 => 'satu', 2 => 'dua', 3 => 'tiga', 4 => 'empat', 5 => 'lima' }
puts "before: #{hash}"
hash.select! { |key, _value| key.odd? }
puts "after: #{hash}"
puts

# * shift()
# * Method ini digunakan untuk menghapus elemen pertama yang ada didalam hash.
puts '*** shift() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding', fav_lang: 'Ruby' }
puts person
person.shift
puts person
puts

# * size()
# * Method ini sama seperti length.
puts '*** size() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding', fav_lang: 'Ruby' }
puts person.size
puts

# * sort()
# * Method ini digunakan untuk menguutkan elemen hash berdasarkan kunci yang ada.
# * Nilai yang dikembalikan dari method ini adalah array dua dimensi.
# * Jika key nya berupa number, dia akan mulai dari yang terkecil hingga terbesar.
# * Jika key nya berupa string / symbol, dia akan mulai dari a..z
puts '*** sort() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding', fav_lang: 'Ruby' }
person_sort = person.sort
print "#{person}\n"
print "#{person_sort}\n"
puts

# * store()
# * Method ini digunakan untuk menambahkan elemen baru ke dalam hash.
puts '*** store() ***'
person = { name: 'Deo Subarno' }
puts person
person.store(:age, 18)
puts person
person.store(:hobby, 'Coding')
puts person
puts

# * values()
# * Method ini digunakan untuk mengambil daftar value elemen yang terdapat didalam hash.
puts '*** values() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding', fav_lang: 'Ruby' }
print "#{person.values}\n"
puts

# * values_at()
# * Method ini digunakan untuk mengambil value dari elemen-elemen hash berdasarkan keys yang sudah disertakan sebagai argumen dari method values_at().
# * Hasil yang dikembalikan dari method ini adalah berupa array.
puts '*** values_at() ***'
person = { name: 'Deo Subarno', age: 18, hobby: 'Coding', fav_lang: 'Ruby' }
print "#{person.values_at(:name)}\n"
print "#{person.values_at(:age, :hobby)}\n"
puts
