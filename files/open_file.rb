# ! Sebelum operasi terhadap suatu file dilakukan, kita perlu membuka file tersebut menggunakan method open().
# bentuk kode: variable = File.open(nama_file, mode_akses)

# contoh kode program
file = File.open('test.txt', 'a')

# ! Selanjutnya kita bisa melakukan operasi terhadap file seperti membaca atau menulis ke dalam file.
# ! Jika operasi nya sudah selesai, kita diharuskan untuk menutup file kembali.

file.close
