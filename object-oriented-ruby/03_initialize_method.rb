# Membuat / Mendefinisikan class
class Segitiga
  # method untuk melakukan inisialisasi atribut class
  #! dalam ruby, method initialize() digunakan untuk melakukan inisialisasi nilai ke dalam atribut atribut yang dimiliki oleh class
  #! dalam ruby, method initialize() adalah method yang akan dijalankan pertama kali ketika class yang bersangkutan dibuat objeknya. konsep ini mirip dengan constructor di bahasa pemrograman php, namun method initialize() biasanya lebih sering digunakan untuk inisialisasi atribut untuk objek dari class yang bersangkutan.
  # membuat parameter untuk method initialize()
  def initialize(alas, tinggi)
    # dalam ruby, nama atribut class perlu diawali dengan tanda @.
    @alas = alas.to_f()
    # dalam ruby, nama atribut class perlu diawali dengan tanda @.
    @tinggi = tinggi.to_f()
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
  # bentuk penggunaan : variableReferensi = class.new(argumen1, argumen2, ...)
  segitiga = Segitiga.new(10, 5) # 10 akan diisikan ke parameter alas, dan 5 ke parameter tinggi yang terdapat pada method initialize() yang selanjutnya akan digunakan untuk menentukan nilai dari atribut alas dan tinggi

  # di dalam class Segitiga, nilai dari atribut-atribut tersebut selanjutnya akan digunakan untuk operasi operasi yang dibutuhkan oleh program, misalnya perhitungan luas
  puts "Luas Segitiga = #{segitiga.luas()}"
end