# ! Umumnya bahasa pemrograman lain memiliki block try-catch untuk penanganan Exception.
# ! Ruby memiliki cara yang berbeda untuk menangani Exception.
# ! Block exception handling di Ruby dibuat menggunakan block kode begin-rescue seperti berikut:
=begin
  begin
    # Perintah yang mungkin menimbulkan exception
  rescue ExceptionType => ObjectException
    # Penanganan Exception
  end
=end

# contoh program
if $PROGRAM_NAME == __FILE__
  puts 'Program pembagian bilangan bulat.'

  print 'Masukkan bilangan pertama: '
  num1 = gets.to_i
  print 'Masukkan bilangan kedua: '
  num2 = gets.to_i

  # Menangani Exception menggunakan block begin-rescue
  begin
    result = num1 / num2
    puts "Hasil pembagian #{num1} dan #{num2} adalah #{result}"
  rescue StandardError => e
    puts 'Terjadi Exception...'
    puts "Tipe Exception: #{e.class}"
    puts "Pesan Exception: #{e.message}"
  end
end

# ! Baris kode diatas memungkinkan terjadinya Exception, yaitu ketika variable num2 bernilai 0.
# ! Exception yang akan dipicu adalah bertipe ZeroDivisionError.
# ! Tipe Exception dapat diperoleh dengan memanggil method `class` dari object exception.
# ! Pesan kesalahannya dapat diperoleh dengan memanggil method `message` dari object exception.
