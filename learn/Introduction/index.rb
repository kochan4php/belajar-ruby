# Elemen-elemen dasar di dalam Ruby

# Awal perintah program

# Dalam Ruby, pada umumnya perintah program ditulis dalam satu baris dan tidak perlu diakhiri dengan tanda titik koma (;). Sebagai contoh seperti berikut:
a = 1
b = 2
c = 3

# Pada kode di atas kita menulis tiga perintah tanpa tanda titik koma. Tanda titik koma diperlukan ketika ketiga perintah tersebut ingin ditulis dalam satu baris seperti berikut
a = 2; b = 4; c = 6

# Akhir perintah program

# Awal komentar

# Contoh komentar satu baris
=begin 
  contoh komentar
  yang memiliki
  lebih dari satu baris
=end

# Akhir komentar

# Awal blok

# Blok banyak digunakan pada saat kita memanggil iterator. Iterator dalam Ruby merupakan metode khusus yang berguna untuk menelusuri elemen-elemen dalam koleksi tertentu. Cara kerja iterator hampir sama dengan proses pengulangan.

# cara menulis blok di dalam Ruby
=begin 
  1. Menggunakan kurung kurawal {}
  nama_blok { |index|
    perintah_1
    perintah_2
  }

  2. Menggunakan kata kunci do dan end
  nama_block do |index|
    perintah_1
    perintah_2
  end
=end

# contoh
3.times { |index| 
  puts "Hello #{index}"
}

total = 0
1.upto(10) { |index|
  print("#{index} ")
  total += index
}
puts "\n#{total}"

5.times do |index|
  puts "Hello #{index}"
end

total2 = 0
5.upto(10) do |index|
  print("#{index} ")
  total2 += index
end
puts "\n#{total2}"

# Akhir blok

# Awal blok inisialisasi dan finalisasi

# Blok inisialisasi adalah kode program yang akan dijalankan pertama kali ketika program ruby di jalankan.
BEGIN {
  puts "Aku dijalankan paling pertama"
}

# Blok finalisasi adalah kode program yang akan dijalankan terakhir ketika program ruby di jalankan.
END {
  puts "Aku dijalankan paling akhir"
}

# Akhir blok inisialisasi dan finalisasi