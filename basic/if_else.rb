# ! Bentuk umum dari perintah if else adalah sebagai berikut:
=begin 
    if kondisi
        action # dijalankan ketika kondisi true
    else
        action # dijalankan ketika kondisi false
    end
=end

# contoh
nilai = 90
absen = 80

if nilai >= 80 && absen >= 80
    puts "Selamat, anda lulus"
else
    puts "Silahkan coba lagi tahun depan"
end