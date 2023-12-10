# ! Bentuk umum dari perintah if, else if dan else adalah sebagai berikut:
=begin 
    if kondisi_1
        action # dijalankan ketika kondisi_1 true
    elsif kondisi_2
        action # dijalankan ketika kondisi_2 true
    else
        action # dijalankan ketika tidak ada kondisi diatas yang bernilai true / hasilnya bernilai false
    end
=end

# contoh
print "Masukkan bilangan a: "
a = gets().to_i()

if a > 0
    puts "#{a} merupakan bilangan positif"
elsif a < 0
    puts "#{a} merupakan bilangan negatif"
else
    puts "a merupakan bilangan nol"
end

# ! Kita bisa menambahkan lebih banyak perintah elsif jika memang diperlukan untuk membuat kondisi yang lebih banyak.

# contoh penggunaan elsif lebih dari satu
require 'time'

month = Time.now().month()

def checkMonth(month) 
    result = nil

    if month == 1
        result = "Januari"
    elsif month == 2
        result = "Februari"
    elsif month == 3
        result = "Maret"
    elsif month == 4
        result = "April"
    elsif month == 5
        result = "Mei"
    elsif month == 6
        result = "Juni"
    elsif month == 7
        result = "Juli"
    elsif month == 8
        result = "Agustus"
    elsif month == 9
        result = "September"
    elsif month == 10
        result = "Oktober"
    elsif month == 11
        result = "November"
    else
        result = "Desember"
    end

    return result
end

if $0 == __FILE__
    puts "Sekarang kita berada di bulan #{checkMonth(month)}"
end