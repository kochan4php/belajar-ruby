# ! Access Modifier adalah aturan dalam pemrograman berorientasi object yang mengatur bagaimana suatu bagian dari kode (misalnya attribute atau method) dapat diakses oleh bagian kode lainnya.
# ! Ada tiga jenis Access Modifier, yaitu public, private dan protected.

# * Access Modifier Public
# ! Method dengan access modifer public artinya method tersebut dapat diakses dari dalam class itu sendiri maupun dari luar class.

# * Access Modifier Private
# ! Method dengan access modifier private artinya method tersebut hanya dapat diakses dari dalam class itu sendiri. Jika kita mencoba mengakses nya dari luar class, maka ruby akan memberikan kita error.

# * Access Modifier Protected
# ! Method dengan access modifer protected artinya method tersebut hanya dapat diakses dari dalam class itu sendiri (parent class), beserta class-class turunannya (child class).

# ! Semua attribute class dalam bahasa ruby, secara default bersifat private.
# ! Sedangkan untuk semua constanta yang didefinisikan didalam class, secara default selalu bersifat public.
# ! Pada saat method didefinisikan tanpa menyebutkan access modifier nya, secara default method tersebut akan bersifat public.
# ! Sedangkan untuk method initialize, method tersebut akan selalu bersifat private.

# ! Bentuk umum menuliskan access modifier adalah sebagai berikut:
=begin 
    class ClassName
        public
        # list method yang bersifat public

        private
        # list method yang bersifat private

        protected
        # list method yang bersifat protected
    end
=end

# contoh kode program
class PersegiPanjang
    def initialize(panjang, lebar)
        @panjang = panjang
        @lebar = lebar
    end

    public
    def print_luas()
        "Luas persegi panjang dengan panjangnya #{@panjang} dan lebarnya #{@lebar} adalah #{luas()}"
    end

    private
    def luas()
        @panjang * @lebar
    end
end

if $0 == __FILE__
    obj = PersegiPanjang.new(20, 15)
    puts obj.print_luas()
    # puts obj.luas() # error karena mencoba mengakses method dengan access modifier private
end