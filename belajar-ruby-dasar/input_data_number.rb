if $0 == __FILE__
    # Membaca data integer
    print "Masukkan jumlah pengulangan yang diinginkan: "
    n = gets().to_i()
    n.times do |i|
        puts "Pengulangan ke #{i}"
    end

    puts "============================"

    # Membaca data float
    print "Masukkan nilai a: "
    a = gets().to_f()
    print "Masukkan nilai b: "
    b = gets().to_f()
    c = a * b
    puts "#{a} x #{b} = #{c}"
end