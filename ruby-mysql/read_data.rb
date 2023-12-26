# membaca data produk menggunakan ruby mysql2

require_relative 'connect'

begin
  # ! Hasil query dari method query() menggunakan keyword SELECT akan disimpan didalam objek bertipe Mysql2::Result yang bertipe hash.
  # ! Untuk mengambil seluruh baris data didalam objek tersebut, kita dapat menggunakan method each().

  # melakukan query data
  rows = Connection::CLIENT.query('SELECT * FROM products')

  # melaukan iterasi terhadap elemen-elemen objek hasil query
  count = 1
  rows.each do |row|
    puts "Produk ke-#{count}"
    puts "Nama produk: #{row['name']}"
    puts "Harga produk: #{row['price']}"
    puts

    count += 1
  end
rescue Mysql2::Error => e
  puts "ANY ERROR: #{e.message}"
ensure
  Connection::CLIENT.close
end
