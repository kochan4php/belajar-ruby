class MathOperationError < StandardError
  def initialize(message)
    super
    @message = message
  end

  # override
  def message
    @message
  end
end

def calculate(num1, num2, operation)
  case operation
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '*'
    num1 * num2
  when '/'
    num1 / num2
  else
    raise(MathOperationError, 'Operation is invalid')
  end
end

if $PROGRAM_NAME == __FILE__
  puts 'Simple calculator program'

  print '-' * 20
  puts

  print 'Enter the first number: '
  num1 = gets.to_f

  print 'Enter the second number: '
  num2 = gets.to_f

  print 'Enter the operation: (+, -, *, /): '
  operation = gets.chomp

  begin
    puts "The result is #{calculate(num1, num2, operation)}"
  rescue MathOperationError => e
    puts "ANY ERROR: #{e.message}"
  end
end
