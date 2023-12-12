# * Pengertian, jenis dan cara mendefinisikan function

# ! Function atau biasa disebut method, adalah sebuah kumpulan kode program yang dibuat untuk melakukan tugas-tugas tertentu.
# ! Function dibedakan menjadi 2, yaitu: function dengan return value dan function tanpa return value (void).
# ! Di Ruby, function didefinisikan dengan menggunakan keyword def dengan bentuk umum seperti berikut:
=begin 
    def nama_function(parameter1, parameter2)
        # action
        # return value
    end

    # atau

    def nama_function(parameter1, parameter2)
        # action
        # return value
    end
=end
# ! Pada kode diatas, terlihat bahwa function dapat memiliki 1 atau lebih parameter atau bahkan tidak memiliki parameter.
# ! Parameter merupakan variable yang dideklarasikan didalam function / method.
# ! Argumen merupakan variable yang nilainya dikirim ke dalam function.

# contoh function tanpa return value
puts "=" * 80

def show_ruby_version()
    system('ruby -v')
end
show_ruby_version()

# contoh function dengan return value
puts "=" * 80

def tambah(a, b)
    return a + b
end
hasil = tambah(10, 20)
puts hasil

# * Function dengan parameter opsional

# ! Parameter opsional adalah parameter yang nilai awalnya sudah didefinisikan pada saat function didefinisikan.
# ! Melalui teknik ini, kita dapat memanggil method tanpa menyertakan argumen yang merupakan parameter opsional.

# contoh program
puts "=" * 80

def echo(text, newline = true)
    if newline
        puts text
    else
        print text
    end
end
echo("Parameter opsional tidak diisi")
echo("Parameter opsional diisi", false)