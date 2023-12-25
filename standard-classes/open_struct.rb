# ! OpenStruct atau OStruct memiliki perilaku yang mirip dengan Struct, hanya saja OStruct tidak memiliki daftar attribute yang harus ditentukan seperti Struct.
# ! Untuk menggunakan OStruct, kita perlu melakukan require dari library OStruct.
# ! Bentuk umum penulisan OStruct adalah sebagai berikut:
=begin
  require 'ostruct'

  obj = OpenStruct.new
  obj.attr1 = value
  obj.attr2 = value
  obj.attr3 = value
  ...
=end
# ! OStruct tidak lebih cepat performanya dari Struct, namun OStruct lebih flexible dibanding Struct.

# contoh kode program
require 'ostruct'

person = OpenStruct.new
person.name = 'Deo'
person.hobby = 'Coding'
person.age = 18
person.role = 'Backend Developer'

puts "Hello, my name is #{person.name}. I'm #{person.age} years old."

# Kita juga dapat mendefinisikan ostruct menggunakan hash seperti contoh berikut:
person2 = OpenStruct.new(name: 'Deo', age: 18, hobby: 'Coding')
puts person2.hobby

# ! Struct dan OStruct merupakan cara yang paling mudah untuk membuat structur data yang memiliki perilaku seperti class.
