# ! Terdapat beberapa method yang berguna untuk mendapatkan info tentang file, yaitu:
# * size()
# * zero?()
# * exist?()
# * dll

# contoh kode program
if $PROGRAM_NAME == __FILE__
  # mendapatkan ukuran file
  puts File.size('test.txt')

  # memeriksa apakah file yang diperiksa ukurannya 0 atau bukan
  puts File.zero?('test.txt')

  # memeriksa apakah file ada didalam directory saat ini atau tidak
  puts File.exist?('test.txt')
  puts File.exist?('hello.txt')
end
