=begin
  # Variable $LOAD_PATH (bisa ditulis dengan $:) adalah variable global yang digunakan untuk menyimpan lokasi (path) dari file yang akan dimuat.
  # Contoh penggunaanya seperti kode dibawah ini :
=end

if $0 == __FILE__
  # mendaftarkan direktori aktif ke dalam variable $LOAD_PATH
  $LOAD_PATH << "."

  require("Aritmatika")

  # membuat instance dari class Aritmatika
  operasiAritmatika = Aritmatika.new(10, 3)

  # memanggil method dari class Aritmatika yang ada di module Aritmatika
  puts "#{operasiAritmatika.a} + #{operasiAritmatika.b} = #{operasiAritmatika.tambah()}"
  puts "#{operasiAritmatika.a} - #{operasiAritmatika.b} = #{operasiAritmatika.kurang()}"
  puts "#{operasiAritmatika.a} x #{operasiAritmatika.b} = #{operasiAritmatika.kali()}"
  puts "#{operasiAritmatika.a} / #{operasiAritmatika.b} = #{operasiAritmatika.bagi()}"
  puts "#{operasiAritmatika.a} ** #{operasiAritmatika.b} = #{operasiAritmatika.pangkat()}"
end

# Dengan mendaftarkan direktori aktif ke dalam variable $LOAD_PATH, kita tidak perlu menyertakan lokasi (path) dari file yang akan dimuat, seperti require("./Aritmatika"). Kita cukup menulis require("Aritmatika") saja.