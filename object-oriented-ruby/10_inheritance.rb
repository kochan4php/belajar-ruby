=begin 
  # Tujuan inheritance adalah untuk menciptakan hierarki antar class (Parent & Child)
  # Child class akan mewarisi semua properti dan method dari parent nya (yang public)
  # Child class akan memperluas (extends) fungsionalitas dari parent nya
  # Cara mendefinisikan child class adalah sebagai berikut : 
    class NamaChildClass < NamaParentClass
      # atribut & method
    end
=end

# Parent class
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
  def cetakLuas()
    return "Luas Segitiga Siku-siku = " + super.to_s() # super adalah perintah khusus untuk mengakses parent class yang akan dibahas di materi overriding
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
  # membuat instance dari class SegitigaSikuSiku
  segitigaSikuSiku1 = SegitigaSikuSiku.new()

  # mengisi nilai properti alas dan tinggi
  segitigaSikuSiku1.alas = 3
  segitigaSikuSiku1.tinggi = 4

  # menampilkan nilai properti alas dan tinggi
  puts "Alas segitiga siku-siku = #{segitigaSikuSiku1.alas}"
  puts "Tinggi segitiga siku-siku = #{segitigaSikuSiku1.tinggi}"

  # memanggil method cetakLuas() dan cetakKeliling()
  puts segitigaSikuSiku1.cetakLuas()
  puts segitigaSikuSiku1.cetakKeliling()
end