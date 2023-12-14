# ! Perintah unless merupakan perintah yang berkebalikan dari perintah if.
# ! Jika pada if, aksi akan dijalankan ketika kondisi bernilai true, pada unless, aksi akan dijalankan ketika kondisi bernilai false.
# ! Bentuk umum dari perintah unless adalah sebagai berikut:
=begin 
    unless kondisi_false
        aksi
    end

    # atau jika menggunakan else
    unless kondisi
        aksi # akan dijalankan ketika kondisi bernilai false
    else
        aksi # akan dijalankan ketika kondisi bernilai true
    end
=end

# contoh
print "Masukkan nilai a: "
a = gets().to_i()

unless a > 0
    puts "a merupakan bilangan negatif"
else
    puts "a merupakan bilangan positif"
end