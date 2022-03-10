=begin
  # Method statis adalah method yang dimiliki oleh Class, bukan dimiliki oleh objek dari class yang bersangkutan 
  # Selain untuk atribut statis, sifat statis juga dapat diterapkan untuk method.
  # Method statis perlu didefinisikan menggunakan keyword self diikuti nama methodnya, contoh : self.namaMethod().
  # Untuk mengakses method statis, kita tidak perlu membuat instance object terlebih dahulu.
  # Kita dapat menggunakan operator (.) atau (::) untuk mengakses method statis.
  # Pemanggilan method statis dilakukan melalui nama class, dengan bentuk seperti berikut:
    NamaClass.namaMethod() atau NamaClass::namaMethod()
=end

class Segitiga
  # membuat atribut statis
  @@jumlahSegitiga = 0

  def initialize(alas, tinggi)
    @alas = alas.to_f()
    @tinggi = tinggi.to_f()

    @@jumlahSegitiga += 1
  end

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

  def luas()
    return @alas * @tinggi / 2
  end

  # method statis untuk mengakses nilai atribut statis
  def self::jumlahSegitiga()
    return @@jumlahSegitiga
  end

  # method statis yang mengembalikan nilai string "Hello World"
  def self::helloWorld()
    return "Hello World"
  end

  # method statis yang berisi daftar atribut dari class Segitiga
  def self.daftarAtribut()
    return ["alas", "tinggi"]
  end
end

if $0 == __FILE__
  segitiga = Segitiga.new(10, 5) 
  segitiga2 = Segitiga.new(20, 10)

  puts "Luas Segitiga = #{segitiga.luas()}"
  puts "Jumlah objek dari class Segitiga: #{Segitiga::jumlahSegitiga()}" 
  puts "Method statis helloWorld: #{Segitiga.helloWorld()}"
  puts "Daftar atribut class Segitiga: #{Segitiga::daftarAtribut()}"
end

# seperti yang kalian lihat, kita dapat langsung memanggil method statis yang didefinisikan didalam class Segitiga tanpa perlu membuat instance objeknya terlebih dahulu :D 