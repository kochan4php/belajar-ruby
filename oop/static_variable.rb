# ! Static Variable atau disebut juga Class Variable merupakan sebuah variable yang hanya dimiliki oleh class (berbeda dengan Instance Variable yang dimana variable nya merupakan milik object hasil instansiasi suatu class, bukan milik class).
# ! Variable ini dapat di share di antara semua object dari class yang sama.
# ! Static variable harus didefinisikan diluar method initialize().
# ! Bentuk umum penulisan Static Variable adalah dengan menggunakan tanda at dua kali (@@) diikuti dengan nama variable nya.
# ! Contoh: @@nama_variable = nilai

# contoh kode program
class Segitiga
    # mendefinisikan static variable / class variable
    @@jumlah_instance = 0
    
    def initialize(alas, tinggi)
        @alas = alas
        @tinggi = tinggi

        # melakukan suatu expression terhadap static variable
        @@jumlah_instance += 1
    end

    # membuat static method untuk mengakses static variable, karena variable / attribute apapun yang berada didalam class tidak bisa diakses dari luar class
    # static method akan dipelajari di materi selanjutnya
    def self.get_jumlah_instance()
        @@jumlah_instance
    end
end

# menginstansiasi class menjadi object
obj1 = Segitiga.new(5, 3)
obj2 = Segitiga.new(7, 3)
obj3 = Segitiga.new(17, 3)
obj4 = Segitiga.new(7, 13)

# mendapatkan nilai dari static variable @@jumlah_instance dengan cara mengakses static method
puts "Jumlah object hasil instansiasi dari class Segitiga adalah #{Segitiga::get_jumlah_instance()}"