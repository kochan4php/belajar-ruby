=begin
  # Selain menggunakan setter dan getter, kita juga dapat membuat properti dengan menggunakan method attr_accessor() dan attr_reader().
  # Method attr_reader() digunakan untuk membuat properti yang hanya dapat dibaca / read-only
  # Method attr_accessor() digunakan untuk membuat properti yang dapat dibaca dan ditulis / read-write
  
  # Bentuk penggunaan : 
  attr_reader(:properti1, :properti2, ..., properti-n)
  attr_accessor(:properti1, :properti2, ..., properti-n)

  || 

  attr_reader :properti1, :properti2, ..., properti-n
  attr_accessor :properti1, :properti2, ..., properti-n

  ||

  attr_reader("properti1", "properti2", ..., properti-n)
  attr_accessor("properti1", "properti2", ..., properti-n)

  # Untuk mengakses properti dari dalam class yang dibuat menggunakan cara diatas gunkakan keyword self pada saat memanggilnya
  # contoh : self.namaProperti || self::namaProperti
=end

class Segitiga 
  # Properti yang dapat dibaca dan ditulis
  attr_accessor(:alas, :tinggi)
  
  # constructor
  def initialize(alas = 0, tinggi = 0)
    self::alas = alas
    self::tinggi = tinggi
  end

  def cetakLuas()
    puts "Luas Segitiga = #{luas()}"
  end
  
  private
    def luas()
      return self.alas * self.tinggi / 2
    end
end

if $0 == __FILE__
  # instance objek dari class segitiga
  segitiga1 = Segitiga.new()

  # mengisi nilai atribut alas dan tinggi
  segitiga1.alas = 10
  segitiga1.tinggi = 5

  # menampilkan nilai atribut alas
  puts "Alas = #{segitiga1.alas}"
  puts "Tinggi = #{segitiga1.tinggi}"

  # menampilkan luas segitiga
  segitiga1.cetakLuas()
end