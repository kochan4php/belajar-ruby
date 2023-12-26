# mengubah data produk menggunakan ruby mysql2

require_relative 'connect'

begin
  Connection::CLIENT.query("UPDATE products SET price = '9.999.000' WHERE id_product = 2")
rescue Mysql2::Error => e
  puts "ANY ERROR: #{e.message}"
ensure
  Connection::CLIENT.close
end
