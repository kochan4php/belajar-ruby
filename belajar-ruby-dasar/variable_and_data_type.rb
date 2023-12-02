# Mendeklarasikan dan menginisialisasi variabel dengan sebuah object
a = 5
b = 2.5

# Mendapatkan tipe data object yang ditunjuk oleh variabel
puts a.class()
puts b.class()

# Mendapatkan memory address dari object yang ditunjuk oleh variabel
puts a.object_id()
puts b.object_id()

# Mengubah object yang ditunjuk oleh variabel
a = 10 # variabel a menunjuk ke object baru, yang berarti memasukkan nilai baru ke dalam suatu variabel berarti mengubah object yang ditunjuk oleh variabel tersebut
puts a.object_id()

# Ruby merupakan bahasa pemrograman yang berjenis dynamic typed, yang berarti kita tidak perlu mendeklarasikan tipe data dari suatu variabel, karena tipe data dari suatu variabel akan ditentukan oleh object yang ditunjuk oleh variabel tersebut
c = 5
puts c.class()
c = "Hello"
puts c.class()
c = 2.4
puts c.class()