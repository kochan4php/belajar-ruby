# ! Pada ruby, terdapat tipe data Hash.
# ! Hash (atau sering disebut sebagai array asosiatif pada php ataupun object pada javascript) merupakan sebuah tipe data array yang indexnya bukan merupakan integer, melainkan bertipe String atau Symbol.
# ! Symbol mirip dengan String, namun bersifat immutable, unik dan sudah diatur secara otomatis oleh Ruby.
# ! Pembuatan Symbol diawalin dengan tanda titik dua atau colon (:).
# ! Elemen pada Hash merupakan pasangan key dan value (key-value pair).
# ! Hash dibuat menggunakan tanda curly braces ({}).
# ! contoh: nama_variable = {'key' => 'value'} => index key nya merupakan String.
# ! contoh: nama_variable = {:key => 'value'} => index key nya merupakan Symbol.
# ! Untuk mengakses elemen hash, gunakan bentuk umum berikut: nama_variable['key'] atau nama_variable[:key]

# contoh hash dengan menggunakan key bertipe String
data_diri = {
    'name' => 'Deo Subarno',
    'age' => 18,
    'hobby' => 'Coding',
}

puts data_diri['name'] # mengakses elemen dengan index 'name'

# contoh hash dengan menggunakan key bertipe Symbol
data_diri_2 = {
    :name => 'Farhan Kebab',
    :age => 100,
    :hobby => 'Makan kebab'
}

puts data_diri_2[:age] # mengakses elemen dengan index :age

# contoh lain dari hash menggunakan key bertipe Symbol yang merupakan cara yang lebih singkat
data_diri_3 = {
    name: 'Andi Gusma',
    age: 18,
    hobby: 'Sunmori',
}

puts data_diri_3[:hobby]

# ! Sama seperti array, hash juga dapat diisi dengan elemen bertipe hash (nested hash).

# contoh nested hash
cars = {
    bmw: {
        years: 2012,
        color: 'black'
    },
    mercedes: {
        years: 2011,
        color: 'white'
    },
    lamborghini: {
        years: 2009,
        color: 'silver'
    }
}

puts cars[:lamborghini][:color] # silver

# ! Penggunaan Symbol sebagai index dari Hash lebih disarankan dibanding menggunakan String. Karena selain menghemat waktu saat melakukan perbandingan, penggunaan Symbol juga dapat menghemat penggunaan memory, karena hanya disimpan satu kali.