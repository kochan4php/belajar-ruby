# ! Perintah break digunakan untuk menghentikan proses pengulangan secara paksa, meskipun condition yang didefinisikan masih bernilai true.

# contoh menggunakan while
index = 0
while index < 10
  puts "Pengulangan ke-#{index}"
  break if index == 4

  index += 1
end

puts '=' * 30

# contoh menggunakan for
for item in 1...11
  puts item

  break if item == 3
end
