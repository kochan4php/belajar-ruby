# * Instance Method

# ! Instance method merupakan method yang didefinisikan didalam class yang nantinya bisa diakses oleh object hasil instansiasi dari class yang bersangkutan.

# contoh kode program
class PersegiPanjang
  # mendefinisikan atribute / instance variable
  @panjang = 0
  @lebar = 0

  # mendefinisikan instance method yang nantinya akan menjadi perilaku dari sebuah object
  def set_panjang(panjang)
    @panjang = panjang
  end

  def get_panjang
    @panjang
  end

  def set_lebar(lebar)
    @lebar = lebar
  end

  def get_lebar
    @lebar
  end

  def luas
    @panjang * @lebar
  end

  def keliling
    2 * (@panjang + @lebar)
  end
end

# membuat object baru
obj = PersegiPanjang.new

# untuk mengakses instance method, gunakan notasi dot (.) diikuti nama method nya.
obj.set_lebar(10) # menginisialisasi nilai ke atribute lebar dari obj
obj.set_panjang(25) # menginisialisasi nilai ke atribute panjang dari obj

# mencetak luas dan keliling dari obj
puts "Luas dari obj adalah #{obj.luas}"
puts "Keliling dari obj adalah #{obj.keliling}"

# mendapatkan nilai panjang dan lebar dari obj
puts "Sisi panjang obj = #{obj.get_panjang}"
puts "Sisi lebar obj = #{obj.get_lebar}"
