# ! Operator assignment adalah operator yang menugaskan suatu variable untuk menunjuk ke object tertentu sambil melakukan operasi matematika pada nilai variable tersebut.

# ! Macam-macam operator assignment:
#* (a -= b) => (a = a - b)
#* (a += b) => (a = a + b)
#* (a *= b) => (a = a * b)
#* (a /= b) => (a = a / b)
#* (a %= b) => (a = a % b)
#* (a **= b) => (a = a ** b)

# contoh
a = 8
b = 4

a += b # a = 8 + 4
puts a
a -= b # a = 12 - 4
puts a
a *= b # a = 8 * 4
puts a
a /= b # a = 32 / 4
puts a
a **= b # a = 8 ** 4
puts a
a %= b # a = 4096 % 4
puts a