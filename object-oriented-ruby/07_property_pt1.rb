=begin
  # Seperti yang telah diketahui sebelumnya, bahwa atribut class di dalam Ruby selalu memiliki access modifiers private.
  # Untuk membuat atribut yang dapat diakses dari luar class, kita perlu mendefinisikan properti.
  # Dalam Ruby, properti dapat dibuat menggunakan 2 cara yaitu : 
    1. dengan mendefinisikan method setter dan getter
    2. dengan menggunakan method attr_accessor() dan attr_reader()
  # Kali ini kita akan mencoba menggunakan setter dan getter, untuk pembahasan mengenai setter dan getter akan dibahas setelah kita membuat properti menggunakan method attr_accessor() dan attr_reader().
  # mendefinisikan setter :
    def namaSetter=(parameter)
      @atribut = parameter
    end
  # mendefinisikan getter :
    def namaGetter()
      return @atribut
    end
=end

class Segitiga 
  # Constructor untuk menginisialisasi atribut alas dan tinggi
  def initialize(alas = 0, tinggi = 0)
    @alas = alas.to_f()
    @tinggi = tinggi.to_f()
  end

  # setter untuk atribut alas
  def alas=(value) 
    @alas = value.to_f()
  end

  # getter untuk atribut alas
  def alas()
    return @alas
  end

  # setter untuk atribut tinggi
  def tinggi=(value)
    @tinggi = value.to_f()
  end

  # getter untuk atribut tinggi
  def tinggi()
    return @tinggi
  end

  def cetakLuas()
    puts "Luas Segitiga = #{luas()}"
  end
  
  private
    def luas()
      return @alas * @tinggi / 2
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