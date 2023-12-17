# ! Instance variable atau attribute class secara default bersifat private yang artinya attribute class tidak bisa diakses dari luar class.
# ! Solusinya adalah dengan membuat method setter / accessor dan getter / mutator.
# ! Namun problem yang dihasilkan oleh method accessor dan mutator adalah membuat kode Ruby menjadi sangat panjang dan susah dibaca.
# ! Oleh karena itu kita dapat membuat method accessor dan mutator menjadi lebih singkat menggunakan accessor method.
# ! Accessor method adalah cara yang lebih simple untuk mendefinisikan method accessor dan mutator.
# ! Terdapat 3 jenis accessor method, yaitu: `attr_accessor`, `attr_reader` dan `attr_writer`.
# ! kalimat `attr` diatas artinya adalah attribute, yang merupakan variable yang berada didalam class.
# ! Method attr_accessor digunakan untuk membuat method accessor dan mutator sekaligus secara otomatis.
# ! Method attr_reader digunakan untuk membuat method accessor secara otomatis dan tidak akan membuat method mutator.
# ! Method attr_writer digunakan untuk membuat method mutator secara otomatis dan tidak akan membuat method accessor.
# ! Accessor method ini harus didefinisikan didalam class, dan diluar dari method class.
# ! contoh penulisa accessor method adalah sebagai berikut:
=begin 
  class NamaClass
    attr_accessor :nama_attribute_1, :nama_attribute_2, ...
    attr_writer :nama_attribute_1, :nama_attribute_2, ...
    attr_reader :nama_attribute_1, :nama_attribute_2, ...
  end
=end
# ! Nama attribute class yang dikirim sebagai argumen pada accessor method harus merupakan symbol, yaitu titik dua (:) diikuti nama attribute class nya seperti contoh diatas.

# contoh kode program
class Segitiga
  @alas = 0
  @tinggi = 0

  # mendefinisikan accessor method
  attr_accessor :alas, :tinggi

  def luas
    @alas * @tinggi / 2
  end
end

if $PROGRAM_NAME == __FILE__
  obj1 = Segitiga.new

  obj1.alas = 10
  obj1.tinggi = 20

  puts "Luas segitiga dengan alas #{obj1.alas} dan tinggi #{obj1.tinggi} adalah #{obj1.luas}"
end
