# -*- encoding : utf-8 -*-

def rand_janken2(name, rand)
  case rand
  when 0
    return "#{name}さん：グー"
  when 1
    return "#{name}さん：チョキ"
  when 2
    return "#{name}さん：パー"
  end
end


def janken_each
  puts "グーは０,チョキは1,パーは2を入力して下さい"
  a = gets.chomp
  a = a.to_i
  aa  = rand_janken2("あなた", a)
  b = rand(3)
  bb = rand_janken2("コンピューター", b)
  if (a == 0 && b == 0) || (a == 1 && b == 1) || (a == 2 && b == 2)
    puts aa
    puts bb
    puts "勝敗 = 引き分け"
  elsif (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0)
    puts aa
    puts bb
    puts "勝敗 = Aさんの勝ち"
  else
    puts aa
    puts bb
    puts "勝敗 = Bさんの勝ち"
  end
end

n = 0
while(n < 10)
  janken_each
  n += 1
end



