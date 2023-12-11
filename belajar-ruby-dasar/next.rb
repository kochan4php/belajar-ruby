# ! Perintah next digunakan untuk melanjutkan proses pengulangan ke langkah berikutnya dengan mengabaikan semua perintah yang terdapat dibawahnya.
# ! Perintah next ini mirip dengan perintah continue di bahasa pemrograman PHP dan JavaScript.

# contoh
for i in 1..10
    next if i % 2 == 1
    puts "Bilangan #{i}"
end

# pada contoh diatas, perintah puts akan diabaikan ketika variable i bernilai ganjil