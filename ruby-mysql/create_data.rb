# melakukan create data produk menggunakan ruby dan mysql2

require_relative 'connect'

begin
  Connection::CLIENT.query("INSERT INTO products (name, price) VALUES ('Xiaomi Redmi 13', '4.999.000')")
  Connection::CLIENT.query("INSERT INTO products (name, price) VALUES ('Macbook air m1', '11.999.000')")
  Connection::CLIENT.query("INSERT INTO products (name, price) VALUES ('HP Pavilion Plus 14', '14.999.000')")
rescue Mysql2::Error => e
  puts "ANY ERROR: #{e.message}"
ensure
  Connection::CLIENT.close
end
