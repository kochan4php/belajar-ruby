# ! Variable global adalah variabel yang didefinisikan diluar function ataupun class.
# ! Variable global dapat dikenali oleh seluruh function  ataupun class yang ada pada program.
# ! Nama variable global harus diawali dengan tanda dollar ($).
# ! contoh: $nama_variable = nilai

# Mendeklarasikan dan menginisialisasi variable global
$global = "Ini adalah variable global"

# Mendefinisikan function yang berada diluar class
def cetak_global()
    puts "Di dalam function: #{$global}"
end

# Mendeklarasikan class
class Contoh
    def cetak_global()
        puts "Di dalam class: #{$global}"
    end
end

if $0 == __FILE__
    # Memanggil function cetak_global()
    cetak_global()

    # Memanggil method cetak_global() dari class contoh
    obj = Contoh.new()
    obj.cetak_global()
end