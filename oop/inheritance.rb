# ! Inheritance adalah konsep dimana sebuah class dapat mewarisi sifat dan perilaku (attribute dan method) dari class lain.
# ! Class yang memberikan sifat dan perilaku kepada class lain disebut Parent Class atau Base Class.
# ! Class yang menerima / mewarisi sifat dan perilaku dari Parent Class disebut Child Class atau Sub Class.
# ! Child Class juga dapat mendefinisikan sifat dan perilaku baru (attribute dan method baru) ke dalam Child Class tersebut.
# ! Cara mendefinisikan Child Class adalah sebagai berikut:
=begin
  class ChildClass < ParentClass
    # class body
  end
=end
# ! Tanda kurang dari (<) pada kode diatas artinya ChildClass tersebut akan mewarisi sifat dan perilaku dari ParentClass yang ditentukan.

# contoh kode program
class Mobil
  attr_accessor(:warna, :merk, :tahun_keluaran)

  def initialize(warna, merk, tahun_keluaran)
    @warna = warna
    @merk = merk
    @tahun_keluaran = tahun_keluaran
    @speedometer = 0
  end

  def maju
    @speedometer += 5
    'maju'
  end

  def mundur
    @speedometer -= 3
    'mundur'
  end

  def belok_kiri
    'belok kiri'
  end

  def belok_kanan
    'belok kanan'
  end

  def tampilkan_kecepatan
    @speedometer
  end
end

class MobilSport < Mobil
  def tambah_kecepatan
    @speedometer += 20 # mengakses attribute @speedometer yang didefinisikan di class Mobil
    'tambah kecepatan diaktifkan'
  end
end

if $PROGRAM_NAME == __FILE__
  aventador = MobilSport.new('merah', 'lamborghini', 2010)
  puts "Kecepatan mobil aventador saat ini: #{aventador.tampilkan_kecepatan}"
  puts aventador.maju
  puts aventador.maju
  puts aventador.maju
  puts aventador.tambah_kecepatan
  puts aventador.tambah_kecepatan
  puts "Kecepatan mobil aventador saat ini setelah maju dan menambah kecepatan: #{aventador.tampilkan_kecepatan}"
end

# ! Lihat kode diatas, kita hanya mendefinisikan method tambah kecepatan pada class MobilSport.
# ! Namun object hasil instance dari class MobilSport tetap dapat mengakses method-method yang terdapat pada class Mobil
