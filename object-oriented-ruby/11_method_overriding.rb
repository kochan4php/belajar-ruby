=begin
  # Method Overriding adalah membuat sebuah method di child class yang memiliki nama yang sama dengan method di parent class
  # Tujuannya ntuk melakukan fungsionalitas yang sama, dengan keadaan yang berbeda
  # Pada method overriding, jika ingin melakukan fungsionalitas yang sama dengan keadaan yang berbeda, kita bisa menggunakan keyword super.
  # Keyword super digunakan untuk mengakses method di parent class.
=end

class Segitiga
  attr_accessor(:alas, :tinggi)

  # Constructor
  def initialize(alas = 0, tinggi = 0)
    self.alas = alas.to_f()
    self.tinggi = tinggi.to_f()
  end

  def cetakLuas()
    return self.luas()
  end

  private
    def luas()
      return self.alas * self.tinggi / 2
    end
end

# Child class
class SegitigaSikuSiku < Segitiga
  def initialize(alas = 0, tinggi = 0)
    super(alas, tinggi) # super akan memanggil method initialize() yang ada di parent class
  end

  def cetakLuas()
    return "Luas Segitiga Siku-siku = " + super.to_s() # super akan memanggil method cetakLuas() yang ada di parent class
  end

  def cetakKeliling()
    return "Keliling segitiga siku-siku = #{self.keliling()}"
  end

  def hipotenusa()
    return Math.sqrt((self.alas * self.alas) + (self.tinggi * self.tinggi))
  end

  private
    def keliling()
      return self.alas + self.tinggi + self.hipotenusa()
    end
end

if $0 == __FILE__
  segitiga = SegitigaSikuSiku.new(10, 5)
  puts segitiga.cetakLuas()
  puts segitiga.cetakKeliling()
end