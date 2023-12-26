# ! Ada beberapa method yang dapat digunakan untuk membaca file, yaitu:
# * gets()
# * readline()
# * each()
# * each_line()
# * File.read(nama_file)

if $PROGRAM_NAME == __FILE__
  # ! Method gets() digunakan untuk membaca satu baris data dari dalam file.
  # ! Untuk membaca seluruh baris, kita perlu melakukan pengulangan.
  # ! Method ini akan mengembalikan nilai nil jika tidak ada lagi baris yang dapat dibaca atau EOF (end of file).
  puts '*** gets() ***'
  file = File.open('test.txt', 'r')
  # membaca data dari dalam file
  line = file.gets
  while line
    puts line
    line = file.gets
  end
  file.close

  puts

  # ! Method readline() sama seperti gets().
  # ! Bedanya jika tidak ada lagi baris yang dapat dibaca, maka method ini akan melempar exception EOFError.
  # ! Maka dari itu jika menggunakan method ini, harus disertai dengan penanganan error.
  puts '*** readline() ***'
  file = File.open('test.txt', 'r')
  begin
    # membaca data dari dalam file
    line = file.readline
    while line
      puts line
      line = file.readline
    end
  rescue EOFError
    # penanganan error
  end
  file.close

  puts

  # ! Method each digunakan untuk mebaca data dari dalam file dengan cara menelusuri baris-demi-baris dan menyimpannya di suatu variable yang berada didalam blok
  puts '*** each() ***'
  file = File.open('test.txt', 'r')
  # membaca data dari dalam file
  file.each do |l|
    puts l
  end
  file.close

  puts

  # ! Method each_line() cara membaca datanya sama seperti method each()
  puts '*** each_line() ***'
  file = File.open('test.txt', 'r')
  # membaca data dari dalam file
  file.each_line do |l|
    puts l
  end
  file.close

  puts

  # ! Method File.read() digunakan untuk membaca seluruh isi file sekaligus.
  puts '*** File.read() ***'
  puts File.read('test.txt')
end
