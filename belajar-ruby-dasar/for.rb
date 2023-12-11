# ! Perintah for digunakan untuk menelusuri elemen di dalam suatu range maupun collection (array dan hash)/
# ! Bentuk umum penggunaan statement for adalah sebagai berikut:
=begin 
    for element in expression do
        action
    end

    # atau

    for element in expression
        action
    end
=end

# contoh dengan expression range
for i in 1..5
    puts "Pengulangan ke-#{i}"
end

puts "=" * 30

# contoh dengan array
grades = [100, 70, 90, 80, 60]
total = 0
rata_rata = 0

for i in grades
    total += i
end

rata_rata = total / grades.length

puts "Grades: #{grades}"
puts "Total: #{total}"
puts "Rata-rata: #{rata_rata}"

puts "=" * 30

# contoh dengan hash
myself = {
    name: "Deo Subarno",
    age: 18, 
    car: "BMW M4",
    hobby: "Coding",
    fav_language: "Ruby",
    fav_framework: "Ruby on Rails"
}

puts "Data diri saya: "
for key, value in myself
    puts "#{key} => #{value}"
end

puts "=" * 30

# contoh dengan hash ke-2
kamus = {
    :i => "saya",
    :you => "kamu",
    :we => "kita",
    :they => "mereka"
}

for english, indonesian in kamus
    puts "Bahasa indonesia nya #{english} adalah #{indonesian}"
end