# ! Method load() digunakan untuk memuat kode-kode yang ditulis secara terpisah didalam file lain.
# ! Bentuk umum penggunaan method load adalah sebagai berikut:
# ! load 'nama_file.rb'

# contoh program
load 'matematika.rb'

# memanggil anggota module dari file matematika.rb
puts "10 + 4 = #{Matematika::tambah(10, 4)}"
puts "10 / 6 = #{Matematika::bagi(10, 6)}"

obj = Matematika::Lingkaran.new(10)
puts "Luas lingkaran dengan jari-jari 10 adalah #{obj.luas}"

# ! Kode didalam file yang dimuat menggunakan method load() tidak harus ditempatkan didalam block module.
# contoh melakukan load file matematika_2.rb yang tidak menggunakan block module
load 'matematika_2.rb'

# memanggil kode yang ada didalam matematika_2.rb
puts "60 * 5 = #{kali(60, 5)}"
puts "70 - 40 = #{kurang(70, 40)}"
