# Operator

a = 10
b = 3

# * Operator Assignment
puts a += b # 13
puts a -= b # 10
puts a *= b # 30
puts a /= b # 10
puts a %= b # 1
puts a # 1

# * Operator Aritmetika
puts a + b # 13
puts a - b # 7
puts a * b # 30
puts a / b # 3
puts 10.0 / b # 3.3333333333333335
puts a % b # 1
puts a ** b # 1000

# * Operator Perbandingan
puts a == b
puts a != b
puts a > b
puts a < b
puts a >= b
puts a <= b
puts a <=> b
puts b <=> a

# * Operator Logika
# &&
puts true && true # true
puts true && false # false
puts false && true # false
puts false && false # false

# ||
puts true || true # true  
puts true || false # true
puts false || true # true
puts false || false # false

# * Operator Concatenation
firstName = "Inuyama"
lastName = "Aoi"
fullName = firstName + " " + lastName
puts fullName
puts "Ruby goes " + "br" * 5

# * Operator Ternary
a = 20
b = 10

maks = a > b ? a : b
min = b < a ? b : a

puts maks, min