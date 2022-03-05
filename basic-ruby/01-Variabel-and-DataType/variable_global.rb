=begin
 * Variable global
 * In ruby, global variable must declare using $(dollar)
 * example : $globalVariable = value
=end
$variableGlobal = 100

def cetakVariableGlobal
  puts "Isi variable global didalam function: #{$variableGlobal}"
end

class Contoh
  def cetakVariableGlobal
    puts "Isi variable global didalam class: #{$variableGlobal}"
  end
end

cetakVariableGlobal()

contoh = Contoh.new
contoh.cetakVariableGlobal