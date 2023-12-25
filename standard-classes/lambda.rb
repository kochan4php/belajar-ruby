# ! Dalam bahasa Ruby, lambda merupakan salah satu cara untuk membuat fungsi anonymous atau blok kode yang dapat disimpan ke dalam variable.
# ! Lambda merupakan salah satu variasi dari proc. Lambda sebenarnya juga merupakan turunan dari class proc.
# ! Bentuk umum membuat lambda adalah sebagai berikut:
=begin
  variable_name = lambda do |param1, param2, ...|
    # action
  end

  # atau

  variable_name = lambda { |param1, param2, ...| # action }

  # atau

  variable_name = -> (param1, param2, ...) do
    # action
  end

  # atau

  variable_name = -> (param1, param2, ...) { # action }

  # atau tanpa parameter

  variable_name = lambda { # action }
  variable_name = -> { # action }
  variable_name = lambda do
    # action
  end
  variable_name = -> do
    # action
  end
=end
# ! Untuk menjalankan kode lambda, kita perlu memanggilnya seperti memanggil method / function.
# ! cara memanggil lambda adalah seperti berikut:
=begin
  variable_name.call argumen1, argumen2, ...

  # atau

  variable_name.call(argumen1, argumen2, ...)
=end

# contoh kode program
say_hello = ->(name) { puts "Hello #{name}" }
say_hello.call 'Deo Subarno'

# ! Lambda sangat mirip dengan proc, namun ada beberapa perbedaan diantara keduanya.
# ! salah satu perbedaannya adalah, lambda memeriksa jumlah argumen yang dikirimkan, sedangkan proc tidak.

# contoh kode program
talk = ->(name) { puts "Hello #{name}" }
talk_proc = proc { |name| puts "Hello #{name}" }

talk.call('Deo')
talk_proc.call('David')

# ! Seperti yang dilihat, lambda dan proc bekerja dengan benar ketika jumlah argumennya benar.
# ! Sekarang kita coba untuk memanggil mereka dengan jumlah argumen yang salah.

talk_proc.call # Hello
talk.call # wrong number of arguments (given 0, expected 1)

# ! Seperti yang terlihat diatas, ketika lambda mengharapkan argumen dan kita tidak memberikannya, maka lambda tersebut akan memberikan kesalahan pada interpreter ruby.
# ! Sedangkan untuk proc jika argumen yang diharapkan tidak kita berikan, maka secara otomatis nilai defaultnya adalah nil.
