# ! Selain menggunakan statement perulangan seperti sebelumnya, kita juga bisa melakukan pengulangan dengan cara memanggil method-method tertentu yang terdapat di dalam class Integer.
# ! Method-method tersebut seperti:
# * times()
# * upto()
# * downto()
# * step()
# * dan lain sebagainya.

# ! Method times()
# Bentuk umum:
=begin 
    jumlah_pengulangan.times() do
        action
    end

    # atau

    jumlah_pengulangan.times() do |index|
        action
    end
=end

# contoh:

puts "=" * 50

10.times() do 
    puts "Hello World"
end

10.times() do |index|
    puts "Pengulangan sedang berada pada indeks ke-#{index}"
end

# ! Method upto()
# Method upto() ini seperti melakukan perulangan for atau while keatas
# Method upto() juga dapat ditentukan sendiri index pertama dan index terakhirnya
# Bentuk umum:
=begin 
    index_awal.upto(index_akhir) do
        action
    end

    # atau

    index_awal.upto(index_akhir) do |index|
        action
    end
=end

# contoh

puts "=" * 50

1.upto(5) do
    puts "Pengulangan naik"
end

1.upto(3) do |index|
    puts "#{index}. Hello Ruby"
end

# ! Method downto()
# Method downto() ini seperti melakukan perulangan for atau while kebawah
# Method downto() juga dapat ditentukan sendiri index pertama dan index terakhirnya
# index awal dari method downto() harus lebih besar dari index_akhir nya
# Bentuk umum:
=begin 
    index_awal.downto(index_akhir) do
        action
    end

    # atau

    index_awal.downto(index_akhir) do |index|
        action
    end
=end

# contoh

puts "=" * 50

3.downto(0) do
    puts "Pengulangan menurun"
end

5.downto(-1) do |index|
    puts "Pengulangan ke-[#{index}]"
end

# ! Method step()
# Method step() digunakan pada saat kita ingin melakukan looping yang indexnya memiliki selisih nilai tertentu dengan index lainnya.
# Bentuk umum:
=begin 
    index_awal.step(index_akhir, selisih) do 
        action
    end

    # atau

    index_awal.step(index_akhir, selisih) do |index|
        action
    end
=end

# contoh

puts "=" * 50

1.step(3) do |index|
    puts "Hello Ruby ke-#{index}"
end

1.step(10, 3) do |index|
    puts "#{index}. Ruby"
end

# Jika nilai selisih tidak disertakan, maka nilai yang akan digunakan adalah 1.
# Artinya method step() akan memiliki cara kerja yang sama dengan method upto()

# Method step() juga dapat digunakan untuk melakukan pengulangan kebawah / dengan index yang menurun seperti method downto().
# Jika ingin melakukan pengulangan kebawah, maka index awal method step harus lebih besar dari index akhirnya dan nilai selisihnya harus berupa bilangan negatif
# contoh
9.step(0, -2) do |index|
    puts "#{index}. Wow Ruby is beautiful."
end