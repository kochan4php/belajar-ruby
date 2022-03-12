=begin 
  # Method include() digunakan untuk menyertakan atau meletakkan anggota module ke bagian kode tertentu tempat method include() dipanggil. 
  # Bentuk penggunaan method include() adalah sebagai berikut :
    include(NamaModule) || include NamaModule
  # Dengan menggunakan include(), pemanggilan anggota module tidak perlu disertai dengan nama modulenya. 
  # Selain itu, method yang terdapat di dalam module juga tidak perlu diawali dengan keyword self.
=end

module Aritmatika
  def tambah(a,b)
    return a + b
  end

  def kurang(a,b)
    return a - b
  end

  def kali(a,b)
    return a * b
  end

  def bagi(a,b)
    return a / b
  end

  def kuadrat(a)
    return a * a
  end

  def pangkat(a,b)
    return a ** b
  end
end

if $0 == __FILE__
  # memanggil module Aritmatika
  # include Aritmatika 
  include(Aritmatika)

  a = 10.0
  b = 3.0

  # memanggil method-method di dalam module Aritmatika
  puts "#{a} + #{b} = #{tambah(a,b)}"
  puts "#{a} - #{b} = #{kurang(a,b)}"
  puts "#{a} * #{b} = #{kali(a,b)}"
  puts "#{a} / #{b} = #{bagi(a,b)}"
  puts "#{a} ** #{b} = #{pangkat(a,b)}"
  puts "#{a} ** #{a} = #{kuadrat(a)}"
end