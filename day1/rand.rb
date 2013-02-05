# -*- encoding : utf-8 -*-
def rand_janken
  a = rand(3)
  case a
  when 0
    puts "グー"
  when 1
    puts "チョキ"
  when 2
    puts "パー"
  end
end

b = 0
while(b < 10)
  rand_janken
  b += 1
end
 
