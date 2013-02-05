# -*- encoding : utf-8 -*-

janken = ["グー", "チョキ", "パー"]
def rand_janken
  a = rand(3)
  puts janken["a"]
end

for n in 1..10
  rand_janken
end 
