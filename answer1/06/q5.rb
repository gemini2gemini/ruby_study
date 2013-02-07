# -*- encoding : utf-8 -*-
#
Te = ['グー','チョキ','パー']
Guu = 0
Choki = 1
Pa = 2
TeWords = {
  'guu'=>0, 'g'=>0, '0'=>0, 
  'choki'=>1, 'c'=>1, '1'=>1,
  'pa'=>2, 'p'=>2, '2'=>2}

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
    print "guu,choki,paを入力して下さい: "
    s = gets().chomp()
    return -1  if (s == "")
    if TeWords[s] 
      return TeWords[s]
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


