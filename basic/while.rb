# ! Bentuk umum penggunaan perintah perulangan while adalah sebagai berikut:
=begin 
    while condition do
        action
    end

    # atau

    while condition
        action
    end

    # atau

    action while condition

    # atau
    
    begin
        action
    end while condition
=end
# ! Pada kode diatas, action dari perulangan while akan terus dijalankan oleh program selama condition bernilai true.
# ! Dengan demikian, ketika menggunakan while, kita memerlukan suatu cara untuk menjadikan condition bernilai false.
# ! Hal ini dilakukan agar suatu saat proses pengulangan tersebut dapat berhenti.
# ! Jika condition tidak pernah bernilai false, maka pengulangan akan dijalankan secara terus-menerus.

# contoh

# pengulangan while keatas
index = 1
while index < 10
    puts "#{index}. Pengulangan keatas"
    index += 1
end

puts "=" * 30

# pengulangan while kebawah
index = 10
while index > 0
    puts "#{index}. Pengulangan kebawah"
    index -= 1
end

puts "=" * 30

# contoh case pengulangan while
data = [80, 90, 100, 50, 60, 40, 70]

total = 0
rata_rata = 0

i = 0
while i < data.length
    total += data[i]
    i += 1
end

rata_rata = total / data.length

puts "Data: #{data}"
puts "Total: #{total}"
puts "Rata-rata: #{rata_rata}"

puts "=" * 30

# contoh case pengulangan while ke-2
begin
    print "Masukkan username: "
    username = gets().chomp()
    print "Masukkan password: "
    password = gets().chomp()

    puts "Username / Password tidak sesuai" if username != "deo" || password != "12345"
end while username != "deo" || password != "12345"

puts "Selamat datang kembali, #{username}"
