# * Initialize Method

# ! Pada saat membuat object menggunakan method new(), Ruby secara otomatis akan memanggil method initialize().
# ! Dalam bahasa pemrograman berorientasi object lainnya, initialize() dikenal juga sebagai constructor().
# ! Method ini digunakan untuk melakukan proses inisialisasi nilai awal dari instance variable / atribute-atribute yang didefinisikan didalam suatu class.
# ! Nilai-nilai yang digunakan untuk proses inisialisasi biasanya disertakan sebagai parameter dari method initialize().

# contoh kode program
class Segitiga
  # membuat method initialize
  def initialize(alas, tinggi)
    @alas = alas
    @tinggi = tinggi
  end

  def luas
    @alas * @tinggi / 2
  end
end

# membuat object baru
obj = Segitiga.new(5, 6) # mengirim argumen untuk menginisialisasi atribute yang ada di class Segitiga
puts "Luas segitiga: #{obj.luas}"
