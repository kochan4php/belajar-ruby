# ! Selain perintah if, elsif dan unless, proses pengkondisian di dalam Ruby juga dapat dilakukan dengan menggunakan case.
# ! Cara kerja dari perintah case di Ruby sama seperti cara kerja dari perintah switch di bahasa pemrograman lainnya seperti javascript, php dll.
# ! Bentuk umum dari perintah case adalah sebagai berikut:
=begin 
    case expression
        when value_1 then
            action_1
        when value_2 then
            action_2
        when value_3 then
            action_3
        else
            alternative_action
    end
=end
# ! Pada bentuk umum diatas, action_1 akan dilakukan ketika value dari expression nya sama dengan value_1, action_2 akan dilakukan ketika value dari expression nya sama dengan value_2, dan seterusnya.
# ! Jika semua value yang didefinisikan tidak ada yang sama valuenya dengan expression, maka program akan mengeksekusi action alternative nya yang terdapat pada perintah else.

# contoh
require 'time'

month = Time.now().month

if $0 == __FILE__
    result_month = nil
    
    case month
        when 1 then
            result_month = "Januari"
        when 2 then
            result_month = "Februari"
        when 3 then
            result_month = "Maret"
        when 4 then
            result_month = "April"
        when 5 then
            result_month = "Mei"
        when 6 then
            result_month = "Juni"
        when 7 then
            result_month = "Juli"
        when 8 then
            result_month = "Agustus"
        when 9 then
            result_month = "September"
        when 10 then
            result_month = "Oktober"
        when 11 then
            result_month = "November"
        else
            result_month = "Desember"
    end

    puts "Bulan ini adalah bulan #{result_month}"
end