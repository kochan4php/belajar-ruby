# Membuat / Mendefinisikan class
class Segitiga
  # method untuk melakukan inisialisasi atribut class
  #! dalam ruby, method initialize() digunakan untuk melakukan inisialisasi nilai ke dalam atribut atribut yang dimiliki oleh class
  def initialize()
    # dalam ruby, nama atribut class perlu diawali dengan tanda @.
    @alas = 0.0
    # dalam ruby, nama atribut class perlu diawali dengan tanda @.
    @tinggi = 0.0
  end

  # setter method untuk mengisi nilai atribut alas
  def setAlas(a)
    @alas = a.to_f()
  end

  # getter method untuk mengambil nilai atribut alas
  def getAlas()
    return @alas
  end

  # setter method untuk mengisi nilai atribut tinggi
  def setTinggi(t)
    @tinggi = t.to_f()
  end

  # getter method untuk mengambil nilai atribut tinggi
  def getTinggi()
    return @tinggi
  end

  # method menghitung luas segitiga
  def luas()
    return @alas * @tinggi / 2
  end
end

if $0 == __FILE__
  # Membuat instance object dari class dengan cara memanggil method new()
  #! dalam ruby, method new() digunakan untuk membuat instance object dari class
  # bentuk penggunaan : variableReferensi = class.new()
  segitiga = Segitiga.new()

  # mengisi nilai 5 ke dalam atribut alas
  segitiga.setAlas(5)

  # mengisi nilai 3 ke dalam atribut tinggi
  segitiga.setTinggi(3)

  # di dalam class Segitiga, nilai dari atribut-atribut tersebut selanjutnya akan digunakan untuk operasi operasi yang dibutuhkan oleh program, misalnya perhitungan luas
  # memanggil method luas
  puts "Luas Segitiga = #{segitiga.luas()}"

  # Bentuk umum pembuatan objek diatas juga dapat digunakan untuk membuat objek-objek dari beberapa class yang sudah disediakan oleh Ruby, seperti String, Array dan Hash.
  string = String.new() # membuat string kosong dari class String
  array = Array.new() # membuat array kosong dari class Array
  hash = Hash.new() # membuat hash kosong dari class Hash

  puts string # ""
  puts array # []
  puts hash # {}

  # method new() tidak dimiliki oleh class Integer dan class Float, seperti yang ditunjukkan oleh kode berikut :
  int = Integer.new() # undefined method `new' for Integer:Class
  float = Float.new() # undefined method `new' for Float:Class
end