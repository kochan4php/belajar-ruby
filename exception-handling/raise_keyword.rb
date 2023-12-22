# ! Method raise() digunakan untuk memicu atau membangkitakn Exception.
# ! Bentuk umum penggunaan method raise() adalah sebagai berikut:
=begin
  raise(TipeException, "Error Message")

  # atau tanpa kurung

  raise TipeException, "Error Message"

  # atau tanpa error message

  raise TipeException
=end

# contoh kode program
if $PROGRAM_NAME == __FILE__
  puts 'Program pembagian bilangan bulat.'

  print 'Masukkan bilangan pertama: '
  num1 = gets.to_i
  print 'Masukkan bilangan kedua: '
  num2 = gets.to_i

  begin
    raise(ZeroDivisionError, 'Tidak dapat membagi dengan 0') if num2.zero?
  rescue ZeroDivisionError => e
    puts "Any Error: #{e.message}"
    exit(1) # akan menghentikan eksekusi program
  end

  result = num1 / num2
  puts "#{num1} / #{num2} = #{result}"
end
