# Looping

# * while loop
=begin
  while condition do
    # action while true
    # iterator (example : i += 1)
  end
=end

a = 0

while a <= 10 do
  puts "pengulangan naik ke-#{a}"
  a += 1
end

b = 10

while b >= 0 do
  puts "pengulangan nurun ke-#{b}"
  b -= 1
end

if $0 == __FILE__
  nilai = [80, 90, 85, 70, 76, 75, 32, 69, 90, 80]

  total = 0.0
  i = 0

  while i < nilai.length() do
    # total = total + i
    total += nilai[i]
    i += 1
  end
    
  rataRata = total / nilai.length()

  puts "Seluruh Nilai\t: #{nilai}"
  puts "Jumlah Total\t: #{total}"
  puts "Rata-rata\t: #{rataRata}"
end

# * begin...while...
=begin
  begin
    # action while true
    # iterator (example : i += 1)
  end while condition
=end
if $0 == __FILE__
  begin
    print "Username: "
    username = gets().chomp()
    print "Password: "
    password = gets().chomp()
  end while username != "abcde" || password != "12345"

  puts "Selamat datang, login sukses"
end

i = 100
begin
  puts "i = #{i}"
  i += 1
end while i < 100
puts "begin while mirip seperti do while di bahasa pemrograman lain"

# * until 
=begin
  until condition do
    action while condition false
  end
=end

num1 = 0

until num1 > 4 do 
  puts "Ruby Until Loop"
  num1 += 1
end

# * for loop
=begin
  for i in range do
    # puts i
  end
=end

# range
for index in 1..10 do
  puts "pengulangan terhadap range ke-#{index}"
end

# array
arr = ["Buku", "Majalah", "Komik"]

for item in arr do
  puts item
end

# hash
kamus = {
  "one" => "satu",
  "true" => "dua",
  "three" => "tiga",
  "four" => "empat" 
}

# first variable is key, second variable is value
for (key, value) in kamus do
  puts "#{key} : #{value}"
end

# * break statement
# untuk menghentikan pengulangan secara paksa
for index in 1..6 do
  puts index
  if index == 4
    break
  end
end

# * next statement
# untuk melanjutkan pengulangan ke perintah selanjutnya dan mengabaikan perintah dibawahnya
for index in 1..10 do
  # harus selalu diletakkan di paling atas sebelum aksi
  if index % 2 == 1
    next
  end
  puts index
end

# *redo statement
# digunakan untuk melanjutkan perulangan meskipun pengulangannya sudah selesai
num = 0
while num <= 7 do 
  puts num
  num += 1
  if num == 8
    redo
  end
end

# jika ingin melanjutkan perulangan lebih dari satu kali, maka seperti ini
while num <= 7
  puts num
  num += 1
  if (8..10).include?(num)
    redo
  end
end

# * method pengulangan
# times()
=begin
  jumlahPengulangan.times { aksi }

  or

  jumlahPengulangan.times do 
    aksi
  end
=end

=begin
  jumlahPengulangan.times { |index| aksi }

  or

  jumlahPengulangan.times do |index|
    aksi
  end
=end

10.times() do
  puts "Ruby it's elegant"
end

# index dari method times() selalu diawali dengan 0
10.times() do |index|
  puts "#{index + 1}. Ruby on Rails is cool"
end

# * upto()
=begin
  indexAwal.upto(indexAkhir) { aksi }

  or 

  indexAwal.upto(indexAkhir) do
    aksi
  end
=end

=begin
  indexAwal.upto(indexAkhir) { |index| aksi }

  or 

  indexAwal.upto(indexAkhir) do |index|
    aksi
  end
=end

1.upto(10) do
  puts "Sinatra is cool too"
end

1.upto(10) do |index|
  puts "#{index}. Padrino is elegant too"
end

# * downto()
# downto() ini adalah kebalikan dari upto()
# index awal pada method ini harus lebih besar dibanding method akhir
=begin
  indexAwal.downto(indexAkhir) { aksi }

  or 

  indexAwal.downto(indexAkhir) do
    aksi
  end
=end

=begin
  indexAwal.downto(indexAkhir) { |index| aksi }

  or 

  indexAwal.downto(indexAkhir) do |index|
    aksi
  end
=end

10.downto(1) { puts "Tailwind is cool" }

10.downto(1) do |index|
  puts "#{index}. indexnya semakin kecil"
end

# * step()
# digunakan untuk melakukan pengulangan yang indexnya memiliki selisih nilai tertentu
=begin
  indexAwal.step(indexAkhir, selisih) {|index| aksi}

  or 

  indexAwal.step(indexAkhir) do |index|
    aksi
  end
=end

# jika tidak diberikan selisih, maka akan bekerja seperti method upto(), yaitu selisih = 1 
1.step(10, 2) {|index| puts "#{index}. Okeh"}

puts "\n"

# jika tidak diberikan selisih, maka akan bekerja seperti method downto(), yaitu selisih = -1 dengan syarat index awal harus lebih besar dari index akhir
10.step(1, -2) do |index|
  puts "#{index}. step menurun nih"
end