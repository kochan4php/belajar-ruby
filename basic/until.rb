# ! Bentuk umum penggunaan perintah perulangan until adalah sebagai berikut:
=begin 
    until condition do
        action
    end

    # atau

    until condition
        action
    end

    # atau

    action until condition

    # atau
    
    begin
        action
    end until condition
=end
# ! Pada kode diatas, action dari perulangan until akan terus dijalankan oleh program selama condition bernilai false.
# ! Berbeda dengan while, perulangan until akan dihentikan ketika condition bernilai true.

# contoh
index = 5
until index < 0
    puts "Hello Ruby"
    index -= 1
end

# contoh ke-2
index = 0
begin
    puts "Ruby Hello"
    index += 1
end until index > 5