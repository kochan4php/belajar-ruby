# ! Bentuk umum dari perintah if adalah sebagai berikut:
=begin 
    if kondisi_true
        action
    end

    # atau

    action if kondisi_true
=end

# contoh
print "Masukkan nilai a: "
a = gets().to_i()
print "Masukkan nilai b: "
b = gets().to_i()

def sum(a, b)
    return a + b if (a != 0 && b != 0)

    return "Angka yang diinput tidak boleh nol."
end

if $0 == __FILE__
    result = sum(a, b)
    puts result
end