# ! Keyword ensure didalam Ruby memiliku cara kerja yang sama dengan keyword finally yang ada di beberapa bahasa pemrograman.
# ! Keyword ensure berguna untuk membuat bagian finalisasi pada block exception handling.
# ! Bentuk umum penggunaanya adalah sebagai berikut:
=begin
  begin
    # Perintah yang mungkin menimbulkan exception
  rescue TipeException => ObjectException
    # Exception Handling
  ensure
    # Kode untuk finalisasi
  end
=end
# ! Bagian finalisasi / ensure akan selalu di eksekusi baik pada saat terjadi exception maupun tidak.

# contoh kode program
if $PROGRAM_NAME == __FILE__
  print 'Masukkan satu angka dari rentang 1 - 10: '
  num = gets.to_i

  begin
    raise(StandardError, 'Angka yang dimasukkan harus rentang 1 - 10') if num > 10

    puts "Angka yang anda masukkan adalah #{num}"
  rescue StandardError => e
    puts "ANY ERROR: #{e.message}"
  ensure
    puts 'Program selesai dijalankan...'
  end
end
