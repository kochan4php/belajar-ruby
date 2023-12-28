require_relative '../config/connection'

class User
  def initialize
    @client = MySQLModule.client
  end

  def get_one(filter)
    statement = @client.prepare('SELECT * FROM users WHERE username = ? AND password = md5(?)')
    statement.execute(filter[:username], filter[:password])
  end
end
