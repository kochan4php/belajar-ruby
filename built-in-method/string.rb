# * capitalize()
# * Method ini digunakan untuk mengubah huruf pertama yang terdapat didalam string menjadi huruf kapital dan sisanya diubah menjadi huruf kecil.
# * Hasil perubahannya akan disimpan ke objek baru.
# * Dengan demikian, objek string yang lama nilainya tetap.
puts '*** capitalize() ***'
name1 = 'deo'
name2 = name1.capitalize
puts name1.equal?(name2) # method untuk memeriksa apakah merupakan objek yang sama atau tidak
puts name1
puts name2

puts

# * capitalize!()
# * Method ini fungsinya sama seperti capitalize().
# * Perbedaannya, hasil perubahan akan disimpan ke objek lama.
# * Ini berarti method capitalize!() tidak menghasilkan objek baru.
puts '*** capitalize!() ***'
name1 = 'deo'
puts name1
name1.capitalize!
puts name1

puts

# ! casecmp()

# * center()
# * Method ini digunakan untuk meletakkan string di posisi tengah, sesuai dengan lebar karakter yang ditentukan pada saat string tersebut ditampilkan.
puts '*** center() ***'
puts 'Ruby'.center(8) # '  Ruby  '
puts 'Ruby'.center(8, '$') # '$$Ruby$$'

puts

# * chars()
# * Method ini digunakan untuk mengurai karakter-karakter yang terdapat didalam string ke dalam bentuk array.
puts '*** chars() ***'
print 'Ruby'.chars
puts

puts

# ! chomp()

# ! chomp!()

# ! chop()

# ! chop!()

# * concat()
# * Method ini digunakan untuk menyambung object string ke object string lainnya.
puts '*** concat() ***'
firstname = 'Deo'
lastname = 'Subarno'
fullname = firstname.concat(' ').concat(lastname)
puts fullname

puts

# ! count()

# * crypt()
# * Method ini digunakan untuk melakukan enkripsi satu arah terhadap string.
# * Parameter dari method ini berjumlah dua karakter (bukan dua argumen) dan masing masing karakter bisa berupa (0..9), (A..Z), (a..z), (.,) atau (/.).
# * Hasil enkripsi akan disimpan ke dalam objek string baru, sehingga objek string lama nilainya akan sama seperti semula.
puts '*** crypt() ***'
str = 'Ruby'
puts str.crypt('ae')
puts str

puts

# * delete()
# * Method ini digunakan untuk menghapus substring didalam string dan mengembalikannya sebagai objek baru. Objek string lama nilainya tidak berubah.
puts '*** delete() ***'
name = 'Deo Subarno'
puts name.delete('o')
puts name

puts

# * delete!()
# * Method ini fungsinya sama seperti delete(), hanya saja hasilnya akan dikembalikan ke objek yang lama (tidak menghasilkan objek yang baru).
puts '*** delete!() ***'
name = 'Deo Subarno'
puts name.delete!('o')
puts name

puts

# * downcase()
# * Method ini digunakan untuk mengubah semua karakter didalam string menjadi huruf kecil.
# * Hasil perubahannya akan disimpan ke dalam objek baru.
puts '*** downcase() ***'
name = 'Deo Subarno'
puts name.downcase
puts name

puts

# * downcase!()
# * Method ini fungsinya sama seperti downcase(), hanya saja perubahannya akan diterapkan ke objek lamanya (tidak membuat objek baru).
puts '*** downcase!() ***'
name = 'Deo Subarno'
puts name.downcase!
puts name

puts

# ! dump()

# * each_byte()
# * Method ini digunakan untuk menelusuri karakter yang terdapat didalam string dalam bentuk kode ASCII.
puts '*** each_byte() ***'
'abc'.each_byte do |item|
  puts item
end

puts

# ! each_line()

# * empty?()
# * Method ini digunakan untuk memeriksa nilai dari objek string, apakah kosong atau tidak.
# * Jika string tidak berisi karakter, maka method empty?() akan mengembalikan nilai true.
# * Sebaliknya, akan mengembalikan nilai false.
puts '*** empty?() ***'
str = ''
puts str.empty?
str = 'berisi'
puts str.empty?

puts

# * eql?()
# * Method ini digunakan untuk memeriksa dua objek string apakah bernilai sama atau tidak.
# * Jika sama akan bernilia true.
# * Jika tidak akan bernilai false.
puts '*** eql?() ***'
str1 = 'Ruby'
str2 = 'Ruby'
puts str1.eql?(str2)

puts

# * equal?()
# * Method ini digunakan untuk memeriksa dua variable apakah menunjuk ke objek string yang sama atau tidak.
# * Jika menunjuk objek yang sama, akan bernilai true.
# * Jika menunjuk ke objek yang berbeda, akan bernilai false.
puts '*** equal?() ***'
str1 = 'Ruby'
str2 = str1
str3 = 'Ruby'
puts str1.equal?(str2)
puts str1.equal?(str3)
puts str2.equal?(str3)

puts

# ! gsub()

# ! gsub!()

# * hash()
# * Method ini digunakan untuk memperoleh kode hash dari objek string.
puts '*** hash() ***'
puts 'ABCDE'.hash
puts 'abcde'.hash

puts

# ! hex()

# * include?()
# * Method ini digunakan untuk memeriksa keanggotaan dari suatu karakter maupun substring di dalam string, apakah ada atau tidak.
# * Jika karakter atau substring yang diperiksa terdapat didalam string, method include?() akan mengembalikan true.
# * Sebaliknya akan mengembalikan false.
puts '*** include?() ***'
puts 'Ruby'.include?('b')
puts 'Ruby'.include?('R')
puts 'Ruby'.include?('by')

puts

# * index()
# * Method ini digunakan untuk mencari index / posisi dari suatu karakter atau substring didalam string.
# * Method ini akan mengembalikan true jika index dari suatu karakter atau substring ditemukan didalam suatu string.
# * Sebaliknya, method ini akan mengembalikan nilai nil jika index dari suatu karakter atau substring tidak ditemukan didalam suatu string.
puts '*** index() ***'
puts 'Ruby'.index('y')
puts 'Pemrograman Ruby'.index('a')
puts 'Deo Subarno'.index('barno')

puts

# * insert()
# * Method ini digunakan untuk menyisipkan karakter atau substring kedalam string pada index / posisi yang ditentukan.
# *Hasil perubahaan nya akan diterapkan ke objek yang lama.
puts '*** insert() ***'
str = 'Rub'
puts str
str.insert(3, 'y')
puts str
str.insert(0, 'Pemrograman')
str.insert(11, ' ')
puts str

puts

# ! inspect()

# * intern()
# * Method ini digunakan untuk mengkonversi objek string menjadi bertipe symbol
puts '*** intern() ***'
str = 'Ruby'
puts str.class
sym = str.intern
puts sym.class

puts

# * to_sym()
# * Method ini sama saja seperti method intern()
puts '*** to_sym() ***'
str = 'Ruby'
puts str.class
sym = str.intern
puts sym.class

puts

# * length
# * Method ini digunakan untuk meperoleh jumlah karakter atau substring yang terdapat didalam string, termasuk karakter spasi dan escape sequence.
puts '*** length ***'
puts 'Ruby'.length
puts "Pemrograman Ruby \n".length

puts

# ! ljust()

# * lstrip()
# * Method ini digunakan untuk menghapus karakter spasi atau tab yang berada di awal string.
# * Hasil perubahan akan disimpan ke dalam objek string baru.
puts '*** lstrip() ***'
str1 = '            Ruby'
str2 = str1.lstrip
puts str1
puts str2

puts

# * lstrip!()
# * Method ini memiliki fungsi yang sama dengan method lstrip().
# * Namun hasil perubahannya akan disimpan ke objek yang lama.
puts '*** lstrip!() ***'
str1 = '        Ruby'
puts str1
str1.lstrip!
puts str1

puts

# ! oct()

# * replace()
# * Method ini digunakan untuk mengganti seluruh isi string.
# * Hasil perubahaan akan diterapkan pada objek yang lama.
puts '*** replace() ***'
str = 'Ruby'
puts str
str.replace('Node JS')
puts str

puts

# * reverse()
# * Method ini digunakan untuk membalik urutan karakter didalam string.
# * Hasil perubahaannya akan disimpan ke objek baru.
puts '*** reverse() ***'
str1 = 'Ruby'
puts str1
str2 = str1.reverse
puts str2
puts str1

puts

# * reverse!()
# * Method ini sama fungsinya seperti reverse(), namun hasil perubahannya akan disimpan di objek yang lama.
puts '*** reverse!() ***'
str = 'Ruby'
puts str
str.reverse!
puts str

puts

# ! rindex()

# ! rjust()

# * rstrip()
# * Method ini digunakan untuk menghapus karakter spasi atau tab yang terdapat di akhir string.
# * Hasil perubahannya akan disimpan kedalam objek baru.
puts '*** rstrip() ***'
str1 = 'Ruby          '
puts str1.length
str2 = str1.rstrip
puts str2.length

puts

# * rstrip!()
# * Method ini fungsinya sama seperti rstrip(), hanya saja hasil perubahannya akan diterapkan ke objek yang memanggil method ini.
puts '*** rstrip!() ***'
str = 'Ruby           '
puts str.length
str.rstrip!
puts str.length

puts

# * slice()
# * Method ini digunakan untuk mengambil substring mulai dari index awal sampai index akhir atau dengan menggunakan jangkauan tertentu.
# * Pengambilan substring juga dapat dilakukan dengan menyertakan substring yang akan diambil sebagai parameternya.
# * Jika substring yang akan diambil tidak ditemukan, maka method slice() akan menghasilkan nil.
# * Sebaliknya, jika ditemukan maka nilai yang dihasilkan dari method slice() akan disimpan kedalam objek baru.
puts '*** slice() ***'
str1 = 'Ruby Python Java NodeJS'
puts str1
str2 = str1.slice('NodeJS')
puts str2
str3 = str1.slice(0..4)
puts str3

puts

# * slice!()
# * Method ini fungsinya sama seperti slice(), tapi substring yang ditemukan akan dihapus dari objek string yang memanggilnya.
puts '*** slice!() ***'
str = 'Ruby Python Java Nodejs'
puts str
str.slice!(0..4)
puts str
str.slice!('Node')
puts str

puts

# * split()
# * Method ini digunakan untuk memecah string berdasarkan karakter pembatas tertentu.
# * Hasil yang diperoleh akan disimpan ke dalam array.
puts '*** split() ***'
str = 'Ruby, Python, Java, Nodejs'
puts str
new_str = str.split(', ')
print new_str
puts

puts

# * strip()
# * Method ini digunakan untuk menghapus karakter spasi atau tab yang berada di awal dan di akhir string.
# * Hasil perubahannya akan disimpan ke dalam objek string baru.
puts '*** strip() ***'
str1 = '          Ruby           '
puts str1.length
str2 = str1.strip
puts str2.length
puts str1.length

puts

# * strip!()
# * Method ini fungsinya sama seperti strip(), tapi perubahann7a diterpakan pada objek yang memanggilnya.
puts '*** strip!() ***'
str = '          Ruby           '
puts str.length
str.strip!
puts str.length

puts

# ! sub()

# ! sub!()

# ! succ() dan next()

# ! succ!() dan next!()

# * swapcase()
# * Method ini digunakan untuk mengubah semua karakter didalam string dari huruf kapital menjadi huruf kecil, dan sebaliknya.
# * Hasil perubahannya akan disimpan kedalam objek string baru.
puts '*** swapcase() ***'
string = 'Pemrograman Ruby'
puts string
new_string = string.swapcase
puts new_string
puts string

puts

# * swapcase!()
# * Method ini fungsinya sama seperti swapcase(), tapi hasil perubahannya akan diterapkan pada objek yang memanggilnya.
puts '*** swapcase!() ***'
string = 'Pemrograman Ruby'
puts string
string.swapcase!
puts string

puts

# * upcase()
# * Method ini digunakan untuk mengubah semua karakter didalam string menjadi huruf kapital.
# * Hasil perubahannya akan disimpan kedalam objek baru.
puts '*** upcase() ***'
string = 'Pemrograman Ruby'
puts string
new_string = string.upcase
puts new_string
puts string

puts

# * upcase!()
# * Method ini fungsinya sama seperti upcase(), tapi perubahannya akan diterapkan pada objek yang memanggil method ini.
puts '*** upcase!() ***'
string = 'Pemrograman Ruby'
puts string
string.upcase!
puts string

puts
