# ! Struct pada bahasa pemrograman Ruby adalah cara untuk membuat struktur data sederhana yang memiliki attribute atau field tertentu.
# ! Struct merupakan built-in class Ruby untuk mempersingkat pendefinisian class, accessor mutator, dan method initialize nya.
# ! Bentuk umum penulisan struct adalah seperti berikut:
=begin
  ClassName = Struct.new(:attr1, :attr2, ...)
  obj = ClassName.new(arg1, arg2, ...)
=end

# contoh kode program
Person = Struct.new(:name, :age, :hobby)
obj = Person.new('Deo Subarno', 18, 'Coding')

puts obj.name
puts obj.age
puts obj.hobby
