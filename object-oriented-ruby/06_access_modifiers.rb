=begin
  # Terdapat tiga tingkat akses yang dapat digunakan pada saat mendefinisikan method didalam suatu class, yaitu public, private dan protected.
  # Public method dapat diakses oleh class itu sendiri maupun objek hasil instance dari class tersebut
  # Private method hanya dapat diakses di dalam lingkup class itu sendiri
  # Protected method hanya dapat diakses oleh class itu sendiri (parent class) beserta class class turunannya
  # Dalam Ruby, semua atribut yang dimiliki oleh class selalu bersifat private dan semua konstanta yang didefinisikan di dalam class selalu bersifat public
  # dan jika method dari suatu class tidak diberikan access modifiers, maka secara default access modifiers untuk method tersebut adalah public, kecuali untuk method initialize(). Method initialize() selalu memiliki access modifiers private sehingga tidak dapat dipanggil secara langsung dari luar class.
  # bentuk umum untuk penentuan access modifiers untuk method di dalam class:
  class NamaClass
    private 
    # daftar method private

    public 
    # daftar method public 

    protected 
    # daftar method protected
  end
=end

class Segitiga
  NAMA = "Segitiga"
  @@jumlahSegitiga = 0

  def initialize(alas, tinggi)
    @alas = alas.to_f()
    @tinggi = tinggi.to_f()

    @@jumlahSegitiga += 1
  end

  # method dengan access modifiers public

  public
  def setAlas(a)
    @alas = a.to_f()
  end

  def getAlas()
    return @alas
  end

  def setTinggi(t)
    @tinggi = t.to_f()
  end

  def getTinggi()
    return @tinggi
  end

  def cetakLuas()
    puts "Luas segitiga = #{luas()}" # memanggil method private
  end

  # method dengan access modifiers private

  private
  def luas()
    return @alas * @tinggi / 2
  end
end

if $0 == __FILE__
  segitiga = Segitiga.new(10, 5) 
  segitiga2 = Segitiga.new(20, 10)

  # Mengakses konstanta
  puts Segitiga::NAMA # bisa di akses karena public
  # Mengakses atribut
  # puts Segitiga::@alas # tidak bisa di akses karena private

  # memanggil method public cetakLuas()
  puts segitiga.cetakLuas()

  # mencoba mengakses method private dari luar class
  # puts "Luas Segitiga = #{segitiga.luas()}" # tidak bisa mengakses method private
end 