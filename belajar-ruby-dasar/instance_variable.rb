# ! Instance variable merupakan attribute milik class yang nantinya akan dimiliki oleh setiap object hasil instansiasi dari class tersebut.
# ! Dalam Ruby, penamaan attribute class harus diawali dengan tanda @.
# ! contoh: @nama_attribute = nilai

class Segitiga
    def initialize(alas, tinggi)
        @alas = alas.to_f()
        @tinggi = tinggi.to_f()
    end

    def print_attribute()
        puts "Attribute dari class Segitiga: "
        puts "Alas : #{@alas}"
        puts "Tinggi : #{@tinggi}"
    end

    def luas()
        return 0.5 * @alas * @tinggi
    end

    def print_luas()
        puts "Luas segitiga: #{luas()}"
    end
end

if $0 == __FILE__
    # Membuat instasiasi object dari class Segitiga
    obj = Segitiga.new(5, 10)
    obj.print_attribute()
    obj.print_luas()
end