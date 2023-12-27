require 'mysql2'

module MySQLModule
  def self.client
    Mysql2::Client.new(host: 'localhost', username: 'root', password: '', database: 'sinatra_db')
  end
end
