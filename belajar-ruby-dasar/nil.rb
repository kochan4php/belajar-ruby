# ! Nil merupakan tipe data object hasil instansiasi dari class NilClass.
# ! Dalam bahasa pemrograman lain, nil sama saja dengan null, yang artinya tidak memiliki nilai.
# ! Tipe data nil biasanya digunakan untuk menginisialisasi variable yang nilainya belum dapat ditentukan.

# contoh program
def search_element_in_array(value, array)
    result = nil

    for item in array
        if item == value 
            result = array.index(value)
        end
    end

    return result
end

def output_result(result_index, value, arr) 
    if result_index != nil
        print "#{value} ditemukan pada index ke-#{result_index} dari array #{arr}\n"
    else
        print "#{value} tidak ditemukan pada array #{arr}\n"
    end
end

if $0 == __FILE__
    arr = [1, 2, 3, 4, 76, 9, 57, 300, 29]

    result_index_1 = search_element_in_array(76, arr) # mencari elemen 76
    result_index_2 = search_element_in_array(900, arr) # mencari elemen 900
    
    output_result(result_index_1, 76, arr)
    output_result(result_index_2, 900, arr)
end