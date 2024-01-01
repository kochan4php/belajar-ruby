class AuthError < StandardError
  def initialize(message)
    super
    @message = message
  end

  def message
    @message
  end
end

def auth(username, password)
  user_obj = nil

  users = [
    { username: 'kochan', password: 'password1' },
    { username: 'ruby', password: 'password2' },
    { username: 'deo', password: 'password3' },
    { username: 'budi', password: 'password4' },
    { username: 'gamersganteng', password: 'password5' },
    { username: 'ohhellnah', password: 'password6' }
  ]

  users.each do |user|
    return user_obj = user if user[:username] == username && user[:password] == password
  end

  raise(AuthError, 'Wrong username or password') if user_obj.nil?

  user_obj
end

if $PROGRAM_NAME == __FILE__
  puts 'Simple authentication program'

  print '-' * 25
  puts

  attempts = 1

  while attempts <= 3
    print 'Enter your username: '
    username = gets.chomp

    print 'Enter your password: '
    password = gets.chomp

    begin
      result = auth(username, password)
      puts result
    rescue AuthError => e
      puts e.message
    end

    attempts += 1

    puts
    print 'Press n to stop or any key to continue: '
    key = gets.chomp
    puts

    break if key == 'n'
  end

  puts 'You have exceeded the number of attemps' if attempts > 3
end
