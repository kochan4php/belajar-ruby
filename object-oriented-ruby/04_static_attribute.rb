=begin
  # Atribut statis || Static Attribute
  # Atribut statis adalah atribut dimiliki oleh class, bukan dimiliki oleh objek dari class yang bersangkutan.
  # Atribut statis di ruby ini berfungsi supaya suatu nilai dapat dibagi ke seluruh objek yang meng instance class yang bersangkutan.
  # Attribut statis sering disebut sebagai class variable / variable yang dimiliki oleh class, sedangkan atribut normal sering disebut sebagai instance variable / variable yang dimiliki oleh setiap objek hasil dari instance suatu class
  # di dalam ruby, atribut statis harus didefinisikan diluar method dan harus diawali dengan tanda @@ kemudian nama atribut statisnya.
=end

class Segitiga
  # membuat atribut statis
  @@jumlahSegitiga = 0

  def initialize(alas, tinggi)
    @alas = alas.to_f()
    @tinggi = tinggi.to_f()

    # setiap class ini di instance objectnya, maka nilai atribut statis akan bertambah.
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

  # method bantu untuk mengambil nilai dari atribut statis
  def self::jumlahSegitiga()
    return @@jumlahSegitiga
  end
end

if $0 == __FILE__
  segitiga = Segitiga.new(10, 5) 
  segitiga2 = Segitiga.new(20, 10)

  puts "Luas Segitiga = #{segitiga.luas()}"
  puts "Jumlah objek dari class Segitiga: #{Segitiga::jumlahSegitiga()}" # mengakses method statis yang akan dibahas di materi selanjutnya
end