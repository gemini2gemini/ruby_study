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

def get_te
  while (true) 
    print "#{Te[0]}は0, #{Te[1]}は1, #{Te[2]}は2 を入力して下さい: "
    s = gets().chomp()
    return -1  if (s == "exit")
    if (s == '0' || s == '1' || s == '2') 
      return s.to_i
    end
    puts "** 入力が正しくありません **"
  end
end

for n in 1..10 
  a = rand(3)
  b = get_te
  break  if (b < 0);

  puts "  コンピュータ : #{Te[a]}"
  puts "  あなた       : #{Te[b]}"
  puts "  勝敗         = " + judge(a, b)
end


