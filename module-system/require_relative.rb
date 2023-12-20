# ! Method require_relative() digunakan untuk memuat file lain yang berada dalam satu direktori dengan file pemanggil.
# ! Dengan demikian, kita tidak perlu menyertakan lokasi path dari file yang ingin dimuat.
# ! Bentuk umum penggunaan require_relative() adalah sebagai berikut:
# ! require_relative 'nama_file'

# contoh kode program
require_relative 'matematika'

puts "10 + 90 = #{Matematika::tambah(10, 90)}"
puts Matematika::kali(10, 10)

obj = Matematika::Segitiga.new(10, 40)
puts "Luas segitiga dengan alas 10 dan tinggi 40 adalah #{obj.luas}"
