# Branching / Percabangan

# * if...else
=begin
  if true
    # Code if condition true
  else
    # Code if condition false
  end

  if (true)
    # Code if condition true
  else
    # Code if condition false
  end
=end

# def isAlpha(char)
#   ascii = char.ord() # => convert char to ASCII code
#   return ((65..90).include?(ascii) || (97..122).include?(ascii))
# end

# if $0 == __FILE__
#   puts "Masukkan huruf: "
#   char = $stdin.getc()

#   if isAlpha(char)
#     puts "Anda memasukkan huruf #{char}"
#   else
#     puts "Karakter #{char} bukan merupakan huruf"
#   end
# end

# * if...elsif...else
=begin
  if true
    # code if first condition true
  elsif true
    # code if second condition true
  else
    # code if condition false
  end

  if (true)
    # code if first condition true
  elsif true
    # code if second condition true
  else
    # code if condition false
  end
=end

# puts "Masukkan nilai UTS: "
# nilaiUts = gets.to_f
# puts "Masukkan nilai UAS: "
# nilaiUas = gets.to_f

# totalNilai = (0.4 * nilaiUts) + (0.6 * nilaiUas)

# if totalNilai >= 90
#   index = "A"
# elsif totalNilai >= 80
#   index = "B"
# elsif totalNilai >= 70
#   index = "C"
# elsif totalNilai >= 60
#   index = "D"
# else
#   index = "E"
# end

# puts "\n"

# puts "Nilai Akhir \t: #{totalNilai}"
# puts "Nilai Index \t: #{index}"

# * unless
=begin
  unless false
    # Code if condition false
  else
    # Code if condition true
  end

  unless (false)
    # Code if condition false
  else
    # Code if condition true
  end
=end

# puts "Masukkan angka: "
# a = gets.to_i

# unless a % 2 != 0
#   puts "#{a} adalah bilangan genap"
# else
#   puts "#{a} adalah bilangan ganjil"
# end

# * case
=begin
  case expression
    when value1
      action1
    when value2
      action2
    else
      action3
  end
=end

if $0 == __FILE__
  puts "Masukkan nama bulan"
  print "Masukkan nomor bula (1 - 12): "
  noBulan = gets().to_i()

  bulan = nil

  case noBulan
    when 1
      bulan = "Januari"
    when 2
      bulan = "Februari"
    when 3
      bulan = "Maret"
    when 4
      bulan = "April"
    when 5
      bulan = "Mei"
    when 6
      bulan = "Juni"
    when 7
      bulan = "Juli"
    when 8
      bulan = "Agustus"
    when 9
      bulan = "September"
    when 10
      bulan = "Oktober"
    when 11
      bulan = "November"
    when 12
      bulan = "Desember"
    else
      puts "Bulan ke-#{noBulan} tidak ada!"
      exit(1)
  end

  puts "Bulan ke-#{noBulan} adalah #{bulan}"
end