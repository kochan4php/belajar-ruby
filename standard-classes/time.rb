# ! class Time merepresentasikan waktu pada Ruby.

# waktu saat ini
time = Time.now
puts time

# tahun, bulan, hari
puts "Tahun: #{time.year}"
puts "Bulan: #{time.month}"
puts "Hari: #{time.day}"

# waktu custom
custom_time = Time.new(2005, 4, 18)

# hari dalam seminggu. 0 adalah hari minggu
puts custom_time.wday

# hari dalam setahun
puts custom_time.yday
