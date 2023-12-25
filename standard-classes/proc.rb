# ! Dalam bahasa pemrograman Ruby, terdapat yang namanya proc.
# ! Proc merupakan nama lain dari 'procedure' atau anonymous function.
# ! Secara umum, 'proc' adalah objek yang menyimpan sekuens instruksi atau blok kode yang dapat dieksekusi.
# ! Bentuk umum untuk menuliskan proc adalah sebagai berikut:
=begin
  variable_name = Proc.new do |param1, param2, ...|
    # action
  end

  # atau

  variable_name = Proc.new { |param1, param2, ...| # action }
=end
# ! Untuk menjalankan kode proc, kita perlu memanggilnya seperti memanggil method / function.
# ! cara memanggil proc adalah seperti berikut:
=begin
  variable_name.call argumen1, argumen2, ...

  # atau

  variable_name.call(argumen1, argumen2, ...)
=end

# contoh kode program
greeting = proc do |name|
  puts "Hello #{name}"
end

# memanggil proc
greeting.call 'Deo Subarno'
greeting.call('kochan4php')

# ! Proc ini mirip seperti method atau function, dapat melakukan operasi didalam blok kodenya dan dapat memasukkan parameter, hanya saja proc ini dapat disimpan kedalam sebuah variable, sedangkan method tidak.
# ! Yang membuat proc benar-benar powerfull adalah kemampuannya untuk menjadikan dia sebagai argumen dan meneruskannya ke dalam method, karena pada dasarnya proc ini adalah sebuah objek.

# contoh kode program 2
greet = proc do |name|
  puts "Welcome, #{name}"
end

goodbye = proc do |name|
  puts "Goodbye, #{name}"
end

def say(arr, proc)
  arr.each do |item|
    proc.call(item)
  end
end

arr = ['Deo Subarno', 'Budi', 'Anto']
say(arr, greet)
say(arr, goodbye)
