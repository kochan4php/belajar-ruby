# ! Di Ruby, kita dapat menangani banyak tipe Exception sekaligus dengan menggunakan bentuk umum seperti berikut:
=begin
  begin
    # Kumpulan perintah yang mungkin menimbulkan Exception
  rescue TipeException => ObjectException1
    # Penanganan Exception 1
  rescue TipeException => ObjectException2
    # Penanganan Exception 2
  ...
  end
=end

# contoh kode program
if $PROGRAM_NAME == __FILE__
  begin
    # Memicu terjadinya LoadError jika file yang dimaksud tidak ditemukan didalam direktori saat ini
    require_relative 'file'

    # Memicu terjadinya Errno::ENONET jika file yang dimaksud tidak ditemukan didalam direktori saat ini
    f = File.open('file.rb')

    # Memicu terjadinya NameError
    puts a

    # Memicu terjadinya ZeroDivisionError
    puts 1 / 0
  rescue LoadError => e
    puts "ANY ERROR: #{e.message}"
  rescue Errno::ENONET => e
    puts "ANY ERROR: #{e.message}"
  rescue NameError => e
    puts "ANY ERROR: #{e.message}"
  rescue ZeroDivisionError => e
    puts "ANY ERROR: #{e.message}"
  end

end
