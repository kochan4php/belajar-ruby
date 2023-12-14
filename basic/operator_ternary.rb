# ! Operator ternary merupakan bentuk singkat dari if else statement.
# ! Operator ternary ini memiliki tiga operand, dengan bentuk umum seperti berikut: operand1 ? operand2 : operand3.
# ! operand1 merupakan ekspresi boolean. Jika bernilai true, maka nilai yang akan digunakan adalah operand2. Sebaliknya, jika false, maka nilai yang akan digunakan adalah operand3.

# contoh
print "Masukkan bilangan untuk a: "
a = gets().to_i()
print "Masukkan bilangan untuk b: "
b = gets().to_i()

result = a > b ? "a (#{a}) lebih besar dari b (#{b})" : "b (#{b}) lebih besar dari a (#{a})"

puts result