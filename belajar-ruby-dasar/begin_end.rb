BEGIN {
    puts "Inisialisasi program"
}

END {
    puts "Finalisasi Program"
}

if $0 == __FILE__
    puts "Program Utama"
end