# ! Bentuk umum untuk membuat modul adalah sebagai berikut:
#
#   module ModuleName
#     # kumpulan method, konstanta, class dan lain sebagainya
#   end

# contoh kode program
module Matematika
  # mendefinisikan konstanta pada module
  PI = Math::PI

  # mendefinisikan method pada module harus diawali dengan keyword self lalu diikuti tanda titik (.) kemudian nama methodnya
  def self.tambah(param1, param2)
    param1 + param2
  end

  def self.kurang(param1, param2)
    param1 - param2
  end

  def self.kali(param1, param2)
    param1 * param2
  end

  def self.bagi(param1, param2)
    param1 / param2
  end

  # mendefinisikan class pada module
  class Segitiga
    def initialize(alas, tinggi)
      @alas = alas
      @tinggi = tinggi
    end

    def luas
      @alas * @tinggi / 2
    end
  end

  class Lingkaran
    def initialize(jari_jari)
      @r = jari_jari
    end

    def luas
      PI * (@r**2)
    end

    def keliling
      2 * PI * @r
    end
  end
end

# ! Untuk mengakses anggota modul (method, konstanta dan class), kita harus menggunakan tanda titik dua yang ditulis dua kali (::) dengan contoh sebagai berikut:
# ! NamaModule::NamaAnggota
# ! dengan menggunakan contoh module diatas maka jadi seperti ini: Matematika::tambah(angka1, angka2) dan seterusnya.

if $PROGRAM_NAME == __FILE__
  # memanggil method, konstanta dan class didalam modul Matematika
  segitiga = Matematika::Segitiga.new(10, 5)
  lingkaran = Matematika::Lingkaran.new(28)

  puts "Nilai PI adalah #{Matematika::PI}"
  puts "Luas segitiga dengan alas 10 dan tinggi 5 adalah #{segitiga.luas}"
  puts "Luas lingkaran dengan jari-jari 28 adalah #{lingkaran.luas}"
  puts "Keliling lingkaran dengan jari-jari 28 adalah #{lingkaran.keliling}"
  puts "10 + 6 = #{Matematika::tambah(10, 6)}"
end
