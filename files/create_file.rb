# ! Untuk membuat file di bahasa pemrograman Ruby, kita dapat menggunakan class File dan memanggil method new.
# Bentuk umum: file = File.new(nama_file, mode_akses)

# contoh kode program
File.new('test.txt', 'w') if $PROGRAM_NAME == __FILE__

# ! Macam macam mode akses:
# * r read-only.
# * r+ read-write.
# * w write-only.
# * w+ read-write.
# * a write-only.
# * a+ read-write.
