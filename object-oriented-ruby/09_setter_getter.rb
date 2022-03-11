=begin
  # Secara default, atribut class di dalam Ruby memiliki access modifiers private yang artinya atribut class tersebut tidak bisa diakses di luar class.
  # Agar kita bisa mengakses atribut class tersebut, kita membutuhkan yang namanya setter dan getter.
  # Setter ini adalah method yang digunakan untuk mengisi nilai ke dalam atribut class.
  # Getter ini adalah method yang digunakan untuk mengambil nilai dari atribut class.
  # Setter dan Getter biasanya digunakan untuk konsep oop yang bernama enkapsulasi.
  # cara mendefinisikan setter adalah sebagai berikut : 
    def namaSetter=(value)
      @namaAtribut = value
    end
  # cara mendefinisikan getter adalah sebagai berikut :
    def namaGetter()
      return @namaAtribut
    end
=end

class Segitiga
  # mendefinisikan constructor
  def initialize(alas = 0, tinggi = 0)
    @alas = alas
    @tinggi = tinggi
  end

  # IMPORTANT ! Dalam ruby biasanya nama setter method itu memiliki nama yang sama dengan nama atribut

  # setter untuk atribut alas
  def alas=(value)
    @alas = value
  end

  # setter untuk atribut tinggi
  def tinggi=(value) 
    @tinggi = value
  end

  # getter untuk atribut alas
  def getAlas()
    return @alas
  end

  # getter untuk artibut tinggi
  def getTinggi()
    return @tinggi
  end

  # mengakses method private luas()
  def cetakLuas()
    return "Luas segitiga : #{luas()}"
  end

  private def luas()
    return @alas * @tinggi / 2
  end
end

if $0 == __FILE__
  segitiga1 = Segitiga.new()

  # set atribut alas dan tinggi
  segitiga1.alas = 45
  segitiga1.tinggi = 20

  # get atribut alas dan tinggi
  puts "Alas : #{segitiga1.getAlas()}"
  puts "Tinggi : #{segitiga1.getTinggi()}"

  # menampilkan luas segitiga
  puts segitiga1.cetakLuas()
end
