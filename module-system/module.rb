=begin
  # Module berperan sebagai pembungkus kumpulan konstanta, method, maupun class yang memiliki kategori sejenis.
  # Module dalam Ruby cara kerjanya sama seperti namespace yang terdapat di dalam C++.
  # Manfaat utama module adalah untuk menghindari konflik penamaan konstanta, method, atau class yang sama, khususnya untuk program yang dikembangkan oleh lebih dari satu orang.
  # Dengan module, kita dapat mendefinisikan class dengan nama sama, asalkan class-class tersebut disimpan didalam modul yang berbeda. 
  # Pada umumnya, module ditulis secara terpisah di dalam file lain.
  # Module yang sudah dibuat selanjutnya dapat digunakan oleh bagian lain di dalam kode program.
  # Membuat module sebagai berikut :
    module NamaModule
      # kumpulan konstanta, method atau class
    end
  # Sama seperti nama class, nama module juga harus diawali dengan huruf kapital.
  # Untuk mengakses anggota module, kita dapat menggunakan (.) atau (::).
    NamaModule::NamaAnggotaModule
    ||
    NamaModule.NamaAnggotaModule
=end

module Aritmatika
  def self.tambah(a,b)
    return a + b
  end

  def self.kurang(a,b)
    return a - b
  end

  def self.kali(a,b)
    return a * b
  end

  def self.bagi(a,b)
    return a / b
  end

  def self.kuadrat(a)
    return a * a
  end

  def self.pangkat(a,b)
    return a ** b
  end
end

if $0 == __FILE__
  a = 10.0
  b = 3.0

  # memanggil method method di dalam module Aritmatika
  puts "#{a} + #{b} = #{Aritmatika.tambah(a,b)}"
  puts "#{a} - #{b} = #{Aritmatika.kurang(a,b)}"
  puts "#{a} * #{b} = #{Aritmatika.kali(a,b)}"
  puts "#{a} / #{b} = #{Aritmatika.bagi(a,b)}"
  puts "#{a} ** #{b} = #{Aritmatika.pangkat(a,b)}"
  puts "#{a} ** #{a} = #{Aritmatika.kuadrat(a)}"

  # atau
  puts "#{a} + #{b} = #{Aritmatika::tambah(a,b)}"
  puts "#{a} - #{b} = #{Aritmatika::kurang(a,b)}"
  puts "#{a} * #{b} = #{Aritmatika::kali(a,b)}"
  puts "#{a} / #{b} = #{Aritmatika::bagi(a,b)}"
  puts "#{a} ** #{b} = #{Aritmatika::pangkat(a,b)}"
  puts "#{a} ** #{a} = #{Aritmatika::kuadrat(a)}"
end 