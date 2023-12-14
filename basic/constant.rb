# ! Constant atau konstanta merupakan sebuah variable di Ruby yang dimana nilai dari variable tersebut tidak dapat diubah.
# ! Jika nilai dari variable constant diubah, maka akan muncul error.
# ! Nama variable constant dideklarasikan dengan huruf kapital semua.
# ! contoh : NAMA_VARIABLE = nilai

# Mendeklarasikan dan menginisialisasi variable constant
PI = 3.14

if $0 == __FILE__
    puts "Program Menghitung Luas dan Keliling Lingkaran"
    print "Masukkan nilai jari-jari lingkaran: "
    r = gets.to_f()

    # Menghitung luas dan keliling lingkaran
    luas = PI * (r ** 2)
    keliling = 2 * PI * r

    puts "Luas lingkaran: #{luas}"
    puts "Keliling lingkaran: #{keliling}"
end