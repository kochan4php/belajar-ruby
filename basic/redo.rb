# ! Perintah redo digunakan untuk mengulangi eksekusi iterasi saat ini dalam sebuah perulangan.
# ! Perintah redo berbeda dengan perintah break dan next.

# contoh
for index in 1..10
    puts "Pengulangan ke=#{index}"

    redo if index == 2 # akan terus mengulangi eksekusi iterasi jika index bernilai 2
end