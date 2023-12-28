require_relative '../models/user'

class AuthController
  def initialize
    @user_model = User.new
  end

  def login(username, password)
    result = @user_model.get_one({ username: username, password: password })

    @user = nil

    result&.each { |user| @user = { username: user['username'] } }

    @user
  end
end
