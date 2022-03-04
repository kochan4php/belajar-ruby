# instance variable: class attribut / property
=begin
 * instance variable: class attribut / property
 * In ruby, static attribute must declare using @
 * example : @attributeVariable = value
=end

class Triangle
  def initialize(a, t)
    @alas = a.to_i
    @tinggi = t.to_i
  end

  def luas
    return @alas * @tinggi / 2
  end

  def getAlas
    return @alas
  end

  def getTinggi
    return @tinggi
  end

  def printAttribute
    puts "Triangle attribute"
    puts "Alas : #{@alas}"
    puts "Tinggi : #{@tinggi}"
  end

  def printLuas
    puts "Luas segitiga: #{luas()}"
  end
end

triangle1 = Triangle.new(10, 5)
triangle1.printLuas
triangle1.printAttribute