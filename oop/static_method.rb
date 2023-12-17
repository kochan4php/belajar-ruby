# ! Selain static variable, sifat static juga dapat diterapkan untuk method.
# ! Method static perlu didefinisikan menggunakan keyword `self` kemudian diikuti dengan nama method nya
# ! Untuk mengakses method static, kita tidak perlu membuat object terlebih dahulu.
# ! Kita dapat menggunakan tanda titik (.) atau titik dua yang diketik dua kali (::) untuk mengakses method static.
# ! Bentuk umum untuk pendefinisian dan pemanggilan method static adalah sebagai berikut:
=begin 
    class ClassName
        # mendefinisikan method static
        def self.method_name()
            # action
        end
    end

    # memanggil / mengakses method static
    ClassName.method_name()
    ClassName::method_name()
=end

# contoh kode program untuk pendefinisian dan pemanggilan method static
class PersegiPanjang
    def initialize(panjang, lebar)
        @panjang = panjang
        @lebar = lebar
    end

    # mendefinisikan method static
    def self.daftar_attribute()
        ["panjang", "lebar"]
    end
end

if $0 == __FILE__
    # memanggil method static
    puts "Daftar attribute pada class PersegiPanjang adalah #{PersegiPanjang.daftar_attribute()}"
    puts "Daftar attribute pada class PersegiPanjang adalah #{PersegiPanjang::daftar_attribute()}"
end

# ! Seperti yang terlihat diatas, kita bisa memanggil method static tanpa perlu membuat instance object nya terlebih dahulu.