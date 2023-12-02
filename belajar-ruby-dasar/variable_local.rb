# ! Variable lokal adalah variabel yang didefinisikan didalam function atau method didalam class tertentu.
# ! Variable lokal hanya akan dikenali didalam suatu method class atau function tempat variabel tersebut dideklarasikan.

def my_function()
    a = 10
    puts "Nilai a didalam my_function(): #{a}"
end

class MyClass
    def my_function()
        b = 20
        puts "Nilai b didalam my_function() didalam MyClass: #{b}"
        # puts "Nilai a didalam my_function(): #{a}" # ! Error
    end
end

if $0 == __FILE__
    # Memanggil function my_function()
    my_function()

    # Memanggil method my_function() didalam MyClass
    obj = MyClass.new()
    obj.my_function()
end