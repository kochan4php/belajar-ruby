# ! Module Math berisi daftar method untuk melakukan perhitungan-perhitungan matematika, seperti pembagian, perpangkatan, pencarian akar kuadrat dari suatu bilangan, trigonometri, dan lain-lain.
# ! Note: Method-method untuk trigonometri menggunakan sudut dalam radian, bukan derajat. Nilai radian dapat dihitung menggunakan rumus: (sudut x Math::PI) / 180.

# * Method Math::acos()
# * Arccosine, digunakan untuk menghitung invers (kebalikan) dari nilai cosinus, dalam radian. Jika y = arccos x, maka x = cos y.
puts '*** Method Math::acos() ***'
sudut = 90.0
radian = (sudut * Math::PI) / 180
x = Math::cos(radian)
y = Math::acos(x)
puts y

puts

# * Method Math::asin()
# * Arcsine, digunakan untuk menghitung invers (kebalikan) dari nilai sinus, dalam radian. Jika y = arcsine x, maka x = sin y
puts '*** Method Math::asin() ***'
sudut = 90.0
radian = (sudut * Math::PI) / 180
x = Math::sin(radian)
y = Math::asin(x)
puts y

puts

# * Method Math::atan()
# * Arctangent, digunakan untuk menghitung invers (kebalikan) dari nilai tangent, dalam radian. Jika y = arctangent x, maka x = tangent y
puts '*** Method Math::atan() ***'
sudut = 90.0
radian = (sudut * Math::PI) / 180
x = Math::tan(radian)
y = Math::atan(x)
puts y

puts

# * Method Math::cos()
# * Method ini digunakan untuk menghitung cosinus. Parameter berada dalam satuan radian.
puts '*** Method Math::cos() ***'
puts Math::cos((0.0 * Math::PI) / 180) # cosinus 0
puts Math::cos((30.0 * Math::PI) / 180) # cosinus 30
puts Math::cos((45.0 * Math::PI) / 180) # cosinus 45
puts Math::cos((60.0 * Math::PI) / 180) # cosinus 60
puts Math::cos((90.0 * Math::PI) / 180) # cosinus 90

puts

# * Method Math::sin()
# * Method ini digunakna untuk menghitung sinus. Parameter berada dalam satuan radian.
puts '*** Method Math::sin() ***'
puts Math::sin((0.0 * Math::PI) / 180) # sinus 0
puts Math::sin((30.0 * Math::PI) / 180) # sinus 30
puts Math::sin((45.0 * Math::PI) / 180) # sinus 45
puts Math::sin((60.0 * Math::PI) / 180) # sinus 60
puts Math::sin((90.0 * Math::PI) / 180) # sinus 90

puts

# * Method Math::tan()
# * Method ini digunakan untuk menghitung tangent. Parameter berada dalam satuan radian.
puts '*** Method Math::tan() ***'
puts Math::tan((0.0 * Math::PI) / 180) # tangent 0
puts Math::tan((30.0 * Math::PI) / 180) # tangent 30
puts Math::tan((45.0 * Math::PI) / 180) # tangent 45
puts Math::tan((60.0 * Math::PI) / 180) # tangent 60
puts Math::tan((90.0 * Math::PI) / 180) # tangent 90

puts

# * Method Math::sqrt()
# * Method ini digunakan untuk menghitung akar kuadrat dari bilangan yang dijadikan parameternya.
puts '*** Method Math::sqrt() ***'
puts Math::sqrt(121).round
puts Math::sqrt(81).round
puts Math::sqrt(64).round

puts

# * Method Math::exp()
# * Method ini digunakan untuk mencari nilai eksponensial x, (e^x) dengan nilai e diambil dari Math::E
puts '*** Method Math::exp() ***'
puts Math::exp(3)
puts Math::E**3

puts

# * Method Math::log()
# * Method ini digunakan untuk menghitung logaritma natural (ln) atau logaritma yang berbasis e, e log x.
# * Jika y = Math::log(x),  maka x = Math::exp(y).
puts '*** Method Math::log() ***'
puts Math::log(2.0)
puts Math::exp(0.6931471805599453)

puts

# * Method Math::log10()
# * Method ini digunakan untuk menghitung logaritma yang berbasis 10, 10 log x
puts '*** Method Math::log10() ***'
puts Math::log10(10)
puts Math::log10(100)
puts Math::log10(1000)
puts Math::log10(10_000)
puts Math::log10(100_000)
