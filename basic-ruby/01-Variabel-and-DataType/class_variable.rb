=begin
 * class variable : static attribute / property 
 * In ruby, static attribute must declare using @@
 * example : @@staticVariable = value
=end

class Triangle
  @@jumlahObject = 0

  def initialize(a, t)
    # define attribute
    @alas = a.to_i()
    @tinggi = t.to_i()

    # setiap object dibuat, tambahkan nilai ke variable ini
    @@jumlahObject += 1
  end

  def printAttribute
    puts "Atribute object segitiga: "
    puts "Alas = #{@alas}"
    puts "Tinggi = #{@alas}"
  end

  def luas
    return @alas * @tinggi / 2
  end

  def printLuas
    puts "Luas segitiga : #{luas()}"
  end

  # define static method
  def self::jumlahObject
    return @@jumlahObject
  end

end

triangle1 = Triangle.new(10, 5)
triangle2 = Triangle.new(7, 5)
triangle3 = Triangle.new(7, 5)

puts "Jumlah object segitiga : #{Triangle.jumlahObject()}"