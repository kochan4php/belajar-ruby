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

# * Memanggil function dengan urutan argumen yang berbeda dengan urutan parameter nya.

# ! Normalnya ketika function yang memiliki parameter dipanggil, maka kita perlu menyertakan argumen sesuai dengan urutan parameter yang didefinisikan pada function.
# ! Ruby mendukung pemanggilan function dengan urutan argumen yang berbeda dengan urutan parameter, asalkan nama parameter dan nilainya disebutkan.
# ! Untuk membuat function seperti itu, kiita perlu menggunakan tanda titik dua (:) di belakang nama parameter, seperti berikut:
=begin 
    def nama_function(a:, b:, c:)
        # action
        # return value
    end
=end
# ! Dengan cara ini, kita dapat mengubah urutan nilai untuk a, b dan c (tidak harus sesuai dengan urutan sebenarnya).
# ! Cara pemanggilan function dengan nilai argumen yang tidak harus sesuai urutan adalah sebagai berikut:
=begin 
    nama_function(c: value, a: value, b: value)
=end

# contoh program
puts
puts "=" * 80

def data_diri(name:, age:, hobby:)
    puts "Hello my name is #{name}. I'm #{age} years old and i love #{hobby}"
end
data_diri(hobby: "Coding", name: "Deo Subarno", age: 18)