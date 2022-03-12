=begin
  # Eksepsi adalah objek yang mengindikasikan suatu kesalahan program. Ketika Ruby mendeteksi adanya kesalahan, Ruby akan membangkitkan eksepsi dengan tipe tertentu.
  # Hierarki class Eksepsi
  # Dalam Ruby, semua tipe eksepsi merupakan child class dari class Exception. Berikut ini merupakan eksepsi standar yang disediakan oleh Ruby.
    # NoMemoryError
    # ScriptError
      # LoadError
      # NotImplementedError
      # SyntaxError
    # SecurityError
    # SignalException
      # Interrupt
    # StandardError -- default for rescue
      # ArgumentError
        # UncaughtThrowError
      # EncodingError
      # FiberError
      # IOError
        # EOFError
      # IndexError
        # StopIteration
        # KeyError
      # LocalJumpError
      # NameError
        # NoMethodError
      # RangeError
        # FloatDomainError
      # RegexpError
      # RuntimeError -- default for raise
        # FrozenError
      # SystemCallError
        # Errno::*
      # ThreadError
      # TypeError
      # ZeroDivisionError
    # SystemExit
    # SystemStackError
    # fatal -- impossible to rescue
  # Masing-masing eksepsi di atas merepresentasikan tipe kesalahan yang berbeda dan dipicu oleh kejadian yang berbeda pula.
=end

#! Blok penanganan eksepsi
=begin
  # Bahasa pemrograman lain pada umumnya memiliki blok try-catch untuk menangani eksepsi.
  # Ruby mengimplementasikan penanganan eksepsi dengan menngunakan cara yang berbeda.
  # Blok penanganan eksepsi dibuat menggunakan bentuk umum berikut : 
      begin
        # perintah yang mungkin menimbulkan eksepsi
      rescue TipeEksepsi => ObjekEksepsi
        # penanganan eksepsi
      end
  # Pada bentuk umum di atas, mula-mula program akan mengeksekusi perintah yang terdapat pada bagian begin.
  # Jika perintah tersebut menimbulkan terjadinya ekksepsi, maka program akan memindahkan eksekusi ke bagian penanganan eksepsi, yaitu bagian rescue.
  # Jika ternyata tidak terjadi eksepsi, maka bagian penanganan eksepsi, yaitu bagian rescue, tidak akan dijalankan / akan diabaikan.
=end

# contoh
if $0 == __FILE__
  puts "Program Pembagian Bilangan Bulat"
  print "Masukkan bilangan pertama : "
  a = gets.to_i
  print "Masukkan bilangan kedua : "
  b = gets.to_i

  begin
    divided = a / b
    puts "#{a} / #{b} = #{divided}"
  rescue ZeroDivisionError => e
    puts "\nTerjadi eksepsi..."    
    puts "Eksepsi : #{e.class}"
    puts "Pesan : #{e.message}"
  end
end

#! Menangani banyak eksepsi
=begin 
  # Untuk menangani banyak tipe eksepsi (lebih dari satu), gunakan bentuk umum berikut: 
      begin
        # perintah-perintah yang mungkin menimbulkan eksepsi
      rescue TipeEksepsi1 => ObjekEksepsi1
        # penanganan eksepsi1
      rescue TipeEksepsi2 => ObjekEksepsi2
        # penanganan eksepsi2
      ...
      rescue TipeEksepsi-n => ObjekEksepsi-n
        # penanganan eksepsi-n
      end
=end

if $0 == __FILE__
  begin
    # memicu terjadinya LoadError jika file Segitiga.rb tidak ditemukan di dalam direktori aktif
    load "Segitiga.rb"

    # memicu terjadinya Errno::ENOENT jika file text.txt tidak ditemukan di dalam direktori aktif
    file = File.open("text.txt")

    # memicu terjadinya ZeroDivisionError
    puts 10 / 0
  rescue LoadError => e
    # Ketika file Segitiga.rb tidak ditemukan, akan menjalankan ini
    puts "WARNING: #{e.class} -- File Segitiga.rb tidak ditemukan"
  rescue Errno::ENOENT => e
    # Ketika file Segitiga.rb ditemukan dan text.txt tidak ditemukan, akan menjalankan ini
    puts "WARNING: #{e.class} -- File text.txt tidak ditemukan"
  rescue ZeroDivisionError => e
    # Ketika file Segitiga.rb dan text.txt ditemukan dan ada proses pembagian dengan 0, akan menjalankan ini
    puts "WARNING: #{e.class} -- Nilai 0 tidak dapat dibagi"
  end
end

#! Method raise()
=begin
  # Method raise() digunakan untuk memicu atau membangkitkan terjadinya eksepsi.
  # Bentuk penggunaan method raise() adalah sebagai berikut :
    raise TipeEksepsi, "Pesan eksepsi" || raise(TipeEksepsi, "Pesan eksepsi") || raise TipeEksepsi
=end 

if $0 == __FILE__
  puts "Program Pembagian Bilangan Bulat"
  print "Masukkan bilangan pertama : "
  a = gets.to_i
  print "Masukkan bilangan kedua : "
  b = gets.to_i

  begin
    if b == 0
      # kode di bawah berguna untuk membangkitkan eksepsi dengan tipe ZeroDivisionError ketika variable b bernilai 0.
      raise ZeroDivisionError, "Terjadi pembagian dengan 0!"
    end
  rescue ZeroDivisionError => e
    puts "\nWARNING: #{e.class} -- #{e.message}"
    exit(1)
  end

  divided = a / b
  puts "#{a} / #{b} = #{divided}"
end

#! Keyword ensure
=begin
  # Keyword ensure di dalam Ruby memiliki cara kerja yang sama dengan keyword finally yang terdapat di dalam beberapa bahasa pemrograman lain.
  # Keyword ensure berguna untuk membuat bagian finalisasi pada blok penanganan eksepsi.
  # Bentuk penggunaan keyword ensure adalah sebagai berikut :
      begin
        # perintah yang mungkin menimbulkan eksepsi
      rescue TipeEksepsi => ObjekEksepsi
        # penanganan eksepsi
      ensure
        # kode untuk finalisasi
      end

      || 

      begin
        # perintah-perintah yang mungkin menimbulkan eksepsi dari beberapa tipe
      rescue TipeEksepsi1 => ObjekEksepsi1
        # penanganan eksepsi1
      rescue TipeEksepsi2 => ObjekEksepsi2
        # penanganan eksepsi2
      ...
      rescue TipeEksepsi-n => ObjekEksepsi-n
        # penanganan eksepsi-n
      ensure
        # kode untuk finalisasi
      end

  # Bagian finalisasi akan tetap dieksekusi, baik pada saat terjadi eksepsi maupun tidak.
=end 

if $0 == __FILE__
  print "Masukkan angka dari 1 sampai 9 : "
  angka = gets.to_i

  begin
    if !(1..9).include?(angka) 
      raise ArgumentError, "Angka harus antara 1 sampai 9"
    end

    puts "Anda memasukkan angka #{angka}"
  rescue ArgumentError => e
    puts "WARNING: #{e.class} -- #{e.message}"
  ensure
    puts "Program selesai..."
  end
end

# Jika kita ingin bagian finalisasi dijalankan hanya ketika terjadi eksepsi, maka kita bisa menggunakan pengkondisian.

if $0 == __FILE__
  print "Masukkan bilangan dari 1 sampai 10 : "
  angka = gets.to_i

  begin
    if !(1..10).include?(angka)
      status = false
      raise ArgumentError, "Angka harus berada di antara 1 sampai 10"
    else 
      status = true
      puts "Anda memasukkan angka #{angka}"
    end
  rescue ArgumentError => e
    puts "WARNING: #{e.class} -- #{e.message}"
  ensure
    if status == false 
      puts "Program selesai... Silahkan Coba Lagi..."
    end
  end
end

#! Membuat tipe eksepsi sendiri
=begin
  # Selain menggunakan tipe-tipe eksepsi yang sudah disediakan oleh Ruby, kita juga diizinkan untuk membuat atau mendefinisikan sendiri tipe eksepsi yang sesuai dengan kebutuhan kita.
  # Kita dapat menggunakan class Exception, class StandarError, atau yang lain sebagai parent class dari class Eksepsi yang akan kita buat. 
  # Bentuk umum pembuatan tipe eksepsi sendiri adalah sebagai berikut :
    class TipeEksepsi < Exception
      # isi atribut dan method
    end 

    || 

    class TipeEksepsi < StandarError
      # isi atribut dan method
    end
=end

# membuat eksepsi
class NegativeError < Exception
  def initialize(message)
    @message = message    
  end

  # override method message dari class Exception
  def message
    return @message
  end
end

if $0 == __FILE__
  print "Masukkan bilangan non-negatif : "
  bilangan = gets.to_i

  begin
    if bilangan < 0 
      status = false
      raise NegativeError.new("Bilangan yang di inputkan harus merupakan bilangan positif!")
      exit(1)
    end

    status = true
    puts "Anda memasukkan bilangan #{bilangan}"
  rescue NegativeError => e
    puts "WARNING: #{e.class} -- #{e.message}"
  ensure
    if !status
      puts "Program selesai... Silahkan Coba Lagi..."
    end
  end
end