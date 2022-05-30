def main
  return 'Hello World'
end

if $0 == __FILE__
  puts main
  puts $0
  puts __FILE__
end