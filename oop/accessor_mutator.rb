# ! Didalam Ruby, attribute class tidak bisa diakses dari luar class.
# ! Maka dari itu kita membutuhkan yang namanya adalah accessor dan mutator method.
# ! Accessor dan Mutator merupakan istilah yang digunakan untuk method class yang gunanya untuk mengakses dan mengubah value dari attribute yang berada didalam class.
# ! Dalam Ruby, accessor adalah method yang digunakan untuk mengakses value attribute class, dan mutator adalah method yang digunakan untuk mengubah value attribute class.
# ! Dalam bahasa pemrograman lain, method accessor disebut juga method getter (untuk get value suatu attribute) dan method mutator disebut juga method setter (untuk set value suatu attribute).

# contoh kode program accessor dan mutator
class Person
    def initialize(name)
        @name = name
    end

    # mendefinisikan method accessor / method getter
    def name()
        @name
    end

    # mendefinisikan method mutator / method setter
    # untuk mendefinisikan method mutator, ruby punya syntax special seperti dibawah ini
    # tujuannya untuk memudahkan developer membedakan mana method accessor dan mana method getter
    def name=(name)
        @name = name
    end
end

person = Person.new("Deo")
puts person.name() # Deo

# mengubah attribute @name dari object person menggunakan method setter
person.name = "John" # untuk cara pemanggilan method setter seperti ini, dibelakang layar ruby menjalankannya seperti person.name= "John", karena ruby bisa mengirimkan argumen ke method tanpa tanda kurung.
puts person.name() # John