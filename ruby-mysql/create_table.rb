require_relative 'connect'

begin
  sql = "
    CREATE TABLE IF NOT EXISTS products (
      id_product int(11) NOT NULL AUTOd_INCREMENT PRIMARY KEY,
      name varchar(255),
      price varchar(255)
    )
  "

  Connection::CLIENT.query(sql)
rescue Mysql2::Error => e
  puts "ANY ERROR: #{e.message}"
ensure
  Connection::CLIENT.close
end
