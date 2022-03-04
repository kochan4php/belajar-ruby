# Variable local
def function1
  a = 10
  puts "Nilai a didalam function1: #{a}"
end

def function2
  a = 30
  puts "Nilai a didalam function2: #{a}"
end

function1()
function2()
puts "Nilai a: #{a}" # undefined local variable or method `a' for main:Object (NameError)