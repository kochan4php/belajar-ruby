# ! Ruby memiliki built-in method bernama `super`
# ! Method super digunakan untuk memanggil method yang ada di superclass dari dalam subclass.
# ! Ketika kita memanggil method super dari dalam subclass, method dengan nama yang sama akan dipanggil dari superclass.

# contoh kode program
class Car
  def sound
    puts 'vroom'
  end
end

class SuperCar < Car
  def sound
    super # call method sound from superclass named Car
    puts 'ngueeeng'
  end
end

obj = SuperCar.new
obj.sound

# ! Method super biasanya digunakan pada method initialize.
# ! Sebagai contoh kita mendefinisikan superclass yang memiliki method initialize yang menerima 1 argumen dan menginisialisasinya ke dalam instance variable.

class Animal
  def initialize(name)
    @name = name
  end
end

# ! Sekarang kita akan membuat subclass bernama Cat yang juga memiliki instance variable bernama @age, dan kita harus mendefinisikannya didalam method initialize.
# ! Daripada kita menulis ulang kodenya, dan meng-set sendiri instance variable @name yang berasal dari superclass Cat, kita dapat menggunakan method initialize dari superclass nya dengan menggunakan method super.

class Cat < Animal
  def initialize(name, age)
    super(name)
    @age = age
  end

  def to_s
    "#{@name} is #{@age} years old."
  end
end

# ! Kita mempassing salah satu argumen ke method super, yang memanggil method initialize dari superclass Cat dan menginisialisasi instance variable @name.

if $PROGRAM_NAME == __FILE__
  cat = Cat.new('Budi', 20)
  puts cat
end
