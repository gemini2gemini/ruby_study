def div(z,y)
  puts z/y
rescue zeroDivisionError
  puts 0
end

div(20,4)
div(20/0)
