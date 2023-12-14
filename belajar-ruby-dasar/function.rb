# * Pengertian, jenis dan cara mendefinisikan function
# ! Function atau biasa disebut method, adalah sebuah kumpulan kode program yang dibuat untuk melakukan tugas-tugas tertentu.
# ! Function dibedakan menjadi 2, yaitu: function dengan return value dan function tanpa return value (void).
# ! Di Ruby, function didefinisikan dengan menggunakan keyword def dengan bentuk umum seperti berikut:
=begin 
    def nama_function()
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

# * Memanggil function dengan jumlah argumen yang berbeda
# ! Di Ruby, kita dapat memanggil sebuah function dan mengirimkan argumen yang dimana jumlah argumennya tidak ditentukan.
# ! Untuk melakukan cara tersebut, kita harus menggunakan tanda bintang* saat mendefinisikan parameternya.
# ! Bentuk umumnya adalah sebagai berikut:
=begin 
    # pendefinisian function
    def nama_function(*parameter)
        action
    end

    # pemanggilan function
    nama_function(param1, param2, param3, ...)
=end
# ! Pada contoh kode diatas, kita menggunakan tanda bintang (*) didepan penamaan parameternya.
# ! Parameter tersebut bisa juga dikatakan parameter non default. Parameter non default harus selalu berada di belakang parameter default.
# ! Contoh kode:
=begin 
    def nama_function(parameter_default, *parameter_non_default)
        action
    end
=end
# ! Pada saat pemanggilan function yang terdapat parameter non default, argumen yang dikirim ke function tersebut akan disimpan kedalam sebuah Array didalam function tersebut.
# ! Sederhananya, parameter seperti ini digunakan untuk mengirim Array ke dalam function.

# contoh kode sederhana
puts "=" * 80

def contoh_function(*parameter)
    print "#{parameter} => #{parameter.class()}\n"
end

contoh_function(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
contoh_function(11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

# contoh program sederhana
def sum(*numbers)
    total = 0

    numbers.each do |number|
        total += number
    end

    return total
end

puts sum(100, 100, 200, 600)
puts sum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# * Operator lambda
# ! Function dengan return value yang melakukan action sederhana dapat dibuat menggunakan operator lambda.
# ! Sederhana nya, operator lambda adalah sebuah function dengan return value yang melakukan action sederhana dan disimpan kedalam variable.
# ! Bentuk umum pembuatan lambda:
=begin 
    # cara pertama
    variable = lambda do |argumen1, argumen2, argumen3, ...|
        action
    end

    # cara kedua
    variable = lambda { |argumen1, argumen2, ...| action }

    # cara ketiga
    variable = -> (argumen1, argumen2, argumen3, ...) { action }

    # cara keempat
    variable = -> (argumen1, argumen2, argumen3, ...) do
        action
    end

    # cara kelima tanpa parameter
    variable = lambda { action }
    variable = lambda do
        action
    end
    variable = -> { action }
    variable = -> do
        action
    end
=end
# ! Operator lambda juga dapat diisi dengan parameter non default (menggunakan tanda bintang didepan nama parameter).
# ! Untuk memanggil function yang merupakan operator lambda, adalah sebagai berikut:
# nama_lambda.call(argumen)

puts "=" * 80

# contoh kode sederhana part 1
say_hello = lambda { |name| "Hello #{name}" }
puts say_hello.call("Deo Subarno") # "Hello Deo Subarno"

# contoh kode sederhana part 2
nilai_terbesar = lambda do |a, b|
    a > b ? a : b
end
puts nilai_terbesar.call(30, 90) # 90

# contoh kode sederhana part 3
kuadrat = -> (number) { number ** 2 }
puts kuadrat.call(4) # 16

# contoh kode sederhana part 4
kubik = -> (number) do
    number ** 3
end
puts kubik.call(3) # 27

# * Mendefinisikan function didalam function
# ! Ruby mengizinkan untuk mendefinisikan funciton didalam function lain

# contoh kode
puts "=" * 50

def luas_lingkaran(r)
    def kuadrat(x)
        return x ** 2
    end

    return Math::PI * kuadrat(r)
end

puts "Luas lingkaran dengan jari-jari 49 : #{luas_lingkaran(49)}"

# ! Note: pada bahasa pemrograman lain, function kuadrat() umumnya hanya dikenal di lingkup function luas_lingkaran(). Namun Ruby mengizinkan untuk memanggil function kuadrat() yang berada didalam function luas_lingkaran() diluar dari lingkup luas_lingkaran().

puts kuadrat(5) # 25

# * Membuat alias baru untuk function yang sudah ada
# ! Suatu function yang sudah didefinisikan dengan nama tertentu dapat didefinisikan ulang menggunakan nama baru yang lebih sederhana.
# ! Contoh kasus nya jika ada suatu function yang namanya terlalu panjang, kita dapat membuat alias baru untuk function tersebut dengan nama yang lebih sederhana
# ! Cara membuat alias baru untuk function yang sudah didefinisikan adalah sebagai berikut:
#  alias nama_alias nama_function_yang_sudah_ada

# contoh kode
puts "=" * 50

alias echo print
echo("Cetak output menggunakan echo")

# * Menghapus function
# ! Suatu function yang sudah didefinisikan dapat dihapus menggunakan perintah undef.
# ! function yang sudah dihapus menggunakan perintah undef, function tersebut tidak dapat dipanggil lagi
# ! Bentuk umum penggunaan perintah undef adalah sebagai berikut:
# undef nama_function
# ! function yang sudah dihapus menggunakan perintah undef, function tersebut tidak dapat dipanggil lagi

# contoh kode
puts
puts "=" * 50

def sum(a, b)
    return a + b
end
puts "Hasil penjumlahan 10 + 20 adalah #{sum(10, 20)}"

undef sum
# puts "Hasil penjumlahan 10 + 20 adalah #{sum(10, 20)}" # undefined method `sum' for main:Object (NoMethodError)