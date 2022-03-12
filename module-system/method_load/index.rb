=begin
  # Method load() digunakan untuk memuat kode-kode ruby yang ditulis secara terpisah didalam file lain.
  # Bentuk umum penggunaanya : 
    load("NamaFile") || load "NamaFile"
=end

if $0 == __FILE__
  # memuat file Aritmatika.rb
  load("Aritmatika.rb")

  # membuat instance dari class Aritmatika
  operasiAritmatika = Aritmatika.new(10, 3)

  # memanggil method dari class Aritmatika yang ada di module Aritmatika
  puts "#{operasiAritmatika.a} + #{operasiAritmatika.b} = #{operasiAritmatika.tambah()}"
  puts "#{operasiAritmatika.a} - #{operasiAritmatika.b} = #{operasiAritmatika.kurang()}"
  puts "#{operasiAritmatika.a} x #{operasiAritmatika.b} = #{operasiAritmatika.kali()}"
  puts "#{operasiAritmatika.a} / #{operasiAritmatika.b} = #{operasiAritmatika.bagi()}"
  puts "#{operasiAritmatika.a} ** #{operasiAritmatika.b} = #{operasiAritmatika.pangkat()}"
end