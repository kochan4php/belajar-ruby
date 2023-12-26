require 'mysql2'

module Connection
  CLIENT = Mysql2::Client.new(host: 'localhost', username: 'root', password: '', database: 'test')
end
