=begin
  * constant adalah suatu keyword untuk menyimpan nilai tetap
  * constant menggunakan huruf kapital
  * example : VARIABLENAME = value
=end

# define constant
PI = 3.14
NAME = "Inuyama Aoi"

def luasLingkaran(r)
  luas = PI * (r ** 2)
  return luas
end

def kelilingLingkaran(r) 
  keliling = 2 * PI * r
  return keliling
end

jariJari = 75
puts "Luas Lingkaran : #{luasLingkaran(jariJari)}"
puts "Keliling Lingkaran : #{kelilingLingkaran(jariJari)}"

# constant hanya boleh didefinisikan sekali saja