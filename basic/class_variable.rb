# ! Class Variable atau disebut attribute static adalah variable yang nilai nya dibagi untuk semua object hasil instansiasi dari class tersebut.
# ! Dalam Ruby, penamaan attribute statis harus diawali dengan tanda @@.
# ! contoh: @@nama_attribute = nilai

class Persegi
    @@jumlahObject = 0

    def initialize(sisi)
        @sisi = sisi.to_f()

        @@jumlahObject += 1
    end

    def luas()
        return @sisi * @sisi
    end

    def keliling()
        return 4 * @sisi
    end

    # Membuat method static agar attribute static dapat diakses dari luar class tanpa harus membuat object instansiasinya
    def self.print_jumlah_object()
        puts "Jumlah object yang telah dibuat: #{@@jumlahObject}"
    end
end

if $0 == __FILE__
    # Membuat 5 instansiasi object dari class Persegi
    obj1 = Persegi.new(5)
    obj2 = Persegi.new(10)
    obj3 = Persegi.new(15)
    obj4 = Persegi.new(15)
    obj5 = Persegi.new(15)

    # Mengakses attribute static dari luar class tanpa melakukan instansiasi class
    Persegi.print_jumlah_object()
end