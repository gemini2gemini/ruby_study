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
    "コンピュータの勝ち"
  else
    "あなたの勝ち"
  end
end

for n in 1..10 
  a = rand(3)
  print "#{Te[0]}は0, #{Te[1]}は1, #{Te[2]}は2 を入力して下さい: "
  b = gets.to_i
  puts "  コンピュータ : #{Te[a]}"
  puts "  あなた       : #{Te[b]}"
  puts "  勝敗         = " + judge(a, b)
end


