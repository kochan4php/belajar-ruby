=begin
  # Method require_relative() pada dasarnya sama seperti method require().
  # Perbedaanya, method require_relative() digunakan untuk memuat file lain yang berada di dalam satu direktori dengan file pemanggil. 
  # Dengan demikian, kita tidak perlu menyertakan lokasi (path) dari file yang akan dimuat.
  # Bentuk umum penggunaanya seperti ini :
    require_relative("file.rb") || require_relative("file") || require_relative("./file")
  # Sama seperti require(), dalam method require_relative() ekstensi .rb juga bersifat optional.
=end

if $0 == __FILE__
  # memuat file Segitiga.rb
  require_relative("./Segitiga")

  # membuat instance dari class Segitiga dari file Segitiga.rb
  segitiga1 = Segitiga.new(3, 4)

  # mencetak hasil luas dari segitiga1
  puts "Luas Segitiga 1: #{segitiga1.cetakLuas()}"
end