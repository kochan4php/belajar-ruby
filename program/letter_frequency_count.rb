# Mari kita membuat program yang akan menghitung frekuensi huruf (jumlah kemunculan) dalam string tertentu.
# Pertama-tama, kita membutuhkan sebuah string

text = "I am learning Ruby and it is fun!"
text.downcase()

# Method downcase akan mengkonversi semua karakter pada string menjadi huruf kecil / lowercase

# Selanjutnya kita memerlukan hash untuk menyimpan huruf sebagai key dan frekuensi huruf sebagai value.
# Untuk itu kita perlu membuat hash kosong dan menetapkan nilai default untuk semua nilai menjadi 0.

freqs = {}
freqs.default = 0

# Method default digunakan untuk menetapkan nilai default untuk hash.
# Artinya key apapun yang tidak memiliki value yang ditetapkan, akan ditetapkan ke nilai default tersebut.

# Selanjutnya kita perlu melakukan iterasi setiap karakter dalam string dan menghitung jumlah kemunculan dalam hash.
# Kita dapat melakukannya dengan menggunakan iterator 'each_char'.

text.each_char do |char|
    freqs[char] += 1
end

# Selama setiap iterasi, variable char diisi dengan karakter yang sesuai dengan string dari variable text dan kemudian nilai frekuensi karakter tersebut bertambah dalam hash freqs.
# Jadi, misalnya, jika huruf a muncul 3 kali dalam string di variable text, maka freqs['a'] akan sama dengan 3 setelah iterator selesai dijalankan.
# Jadi, hash freqs akan menampung semua karakter string dengan nomor kemunculan yang sesuai.

# Untuk mendapatkan keluaran hasil yang bagus dalam urutan abjad, kita dapat membuat range abjad dari a sampai z dan mencetak frekuensi yang sesuai.

for i in 'a'..'z'
    puts "#{i} : #{freqs[i]}"
end

# Kita melakukan ini karena tidak semua huruf terdapat pada string dari variable text.