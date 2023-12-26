# ! Ada beberapa method yang dapat digunakan untuk menulis ke dalam file, yaitu:
# * write() => tidak menambahkan baris baru di akhir kalimat
# * puts() => menambahkan baris baru di akhir kalimat

# contoh kode program
if $PROGRAM_NAME == __FILE__
  f = File.open('test.txt', 'w')
  f.puts('Isi File ini:')
  f.puts('Ruby')
  f.puts('Python')
  f.puts('Java')
  f.puts('JavaScript')
  f.close
end
