=begin
  # Method require() pada dasarnya sama seperti method load(). 
  # Perbedaannya, kita perlu menyebutkan lokasi (path) dari file yang akan dimuat.
  # Contoh :
    require("/path/to/file.rb") || require("/path/to/file") || require("./path/to/file")
  # Dalam method require(), ekstensi .rb tidak harus disertakan (optional).
  # Tanda titik (.) yang terdapat diatas menunjukkan direktori aktif / direktori saat ini.
=end

if $0 == __FILE__
  # memuat file Aritmatika.rb dari folder method_load
  require("../method_load/Aritmatika")

  # membuat instance dari class Aritmatika
  operasiAritmatika = Aritmatika.new(10, 3)

  # memanggil method dari class Aritmatika yang ada di module Aritmatika
  puts "#{operasiAritmatika.a} + #{operasiAritmatika.b} = #{operasiAritmatika.tambah()}"
  puts "#{operasiAritmatika.a} - #{operasiAritmatika.b} = #{operasiAritmatika.kurang()}"
  puts "#{operasiAritmatika.a} x #{operasiAritmatika.b} = #{operasiAritmatika.kali()}"
  puts "#{operasiAritmatika.a} / #{operasiAritmatika.b} = #{operasiAritmatika.bagi()}"
  puts "#{operasiAritmatika.a} ** #{operasiAritmatika.b} = #{operasiAritmatika.pangkat()}"
end
