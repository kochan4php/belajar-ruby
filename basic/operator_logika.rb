# ! Operator logika adalah operator yang digunakan untuk melakukan operasi konjungsi (AND), disjungsi (OR) dan negasi (NOT).
# ! Operator logika harus memiliki operand yang bertipe boolean (true atau false).

# ! Macam - macam operator logika:
#* (and) => operasi and
#* (or) => operasi or
#* (not) => operasi not
#* (&&) => operasi and
#* (||) => operasi or
#* (!) => operasi not

# Operator &&
# Operator && atau and akan menghasilkan nilai true jika kedua operand bernilai true. Selain itu akan bernilai false
# contoh
puts "*** START OPERATOR && ***"
puts "true && true => #{true && true}"
puts "false && true => #{false && true}"
puts "true && false => #{true && false}"
puts "false && false => #{false && false}"
puts "*** END OPERATOR && ***"

puts "-" * 25

# Operator ||
# Operator || atau or akan menghasilkan nilai true jika salah satu atau kedua operand bernilai true. Selain itu akan bernilai false.
# contoh
puts "*** START OPERATOR || ***"
puts "true || true => #{true || true}"
puts "false || true => #{false || true}"
puts "true || false => #{true || false}"
puts "false || false => #{false || false}"
puts "*** END OPERATOR || ***"

puts "-" * 25

# Operator !
# Operator ! atau not akan menghasilkan nilai kebalikan dari boolean (jika true menjadi false, dan false menjadi true).
# contoh
puts "*** START OPERATOR ! ***"
puts "! false => #{! false}"
puts "! true => #{! true}"
puts "*** END OPERATOR ! ***"

# ! Operator logika banyak digunakan pada blok pengkondisian seperti if statement ataupun perulangan while.