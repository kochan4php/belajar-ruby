# ! Selain menggunakan tipe-tipe exception yang sudah disediakan oleh Ruby, kita juga dapat mendefinisikan sendiri tipe exception yang sesuai dengan kebutuhan.
# ! Kita dapat menggunakan class StandardError atau class yang lain sebagai parent class dari class exception yang akan kita buat.
# ! Bentuk umum pembuatan custom exception adalah sebagai berikut:
=begin
  class ExceptionName < ExceptionParentClass
    # body
  end
=end

# contoh kode program
class NegativeError < StandardError
  def initialize(message)
    super
    @message = message
  end

  # melakukan override method message
  def message
    @message
  end
end

if $PROGRAM_NAME == __FILE__
  print 'Masukkan bilangan non-negatif: '
  num = gets.to_i

  begin
    raise NegativeError, 'Nilai tidak boleh negatif' if num.negative?

    puts "Angka yang anda masukkan adalah #{num}"
  rescue NegativeError => e
    puts "ANY ERROR: #{e.message}"
  ensure
    puts 'Program selesai...'
    exit(1)
  end

end
