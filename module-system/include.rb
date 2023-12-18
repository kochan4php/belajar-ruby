# ! Method include() digunakan untuk menyertakan anggota module ke bagian kode tertentu tempat method include dipanggil.
# ! Bentuk umum penggunaan method include() adalah sebagai berikut:
# ! include NamaModule

# ! Dengan menggunakan method include(), pemanggilan anggota module tidak perlu disertai dengan nama modulenya.
# ! Selain itu, method yang ada didalam module juga tidak perlu diawali dengan keyword self.

# contoh kode program
module MatematikaV2
  PI = Math::PI

  def tambah(param1, param2)
    param1 + param2
  end

  def kurang(param1, param2)
    param1 - param2
  end

  def kali(param1, param2)
    param1 * param2
  end

  def bagi(param1, param2)
    param1 / param2
  end

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

if $PROGRAM_NAME == __FILE__
  # Menginclude MatematikaV2
  include MatematikaV2

  # Anggota module dari MatematikaV2 langsung bisa digunakan tanpa menyertakan nama modulenya
  puts "10 + 4 = #{tambah(10, 4)}"
  puts "10 * 4 = #{kali(10, 4)}"

  obj = Segitiga.new(50, 30)
  puts "Luas segitiga dengan alas 50 dan tinggi 30 adalah #{obj.luas}"
end
