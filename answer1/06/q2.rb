# -*- encoding : utf-8 -*-
#
Te = ['グー','チョキ','パー']
Guu = 0
Choki = 1
Pa = 2

def judge(a, b)
  if (a == b)
    "引き分け"
  elsif (a == Guu && b == Choki ||
         a == Choki && b == Pa ||
         a == Pa && b == Guu)
    "Aさんの勝ち"
  else
    "Bさんの勝ち"
  end
end

for n in 1..10 
  a = rand(3)
  b = rand(3)
  puts "Aさん: #{Te[a]}"
  puts "Bさん: #{Te[b]}"
  puts "  勝敗 = " + judge(a, b)
end


