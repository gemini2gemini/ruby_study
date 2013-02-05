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
  aa  = rand_janken2("A", a = rand(3))
  bb = rand_janken2("B", b = rand(3))
  if (a == 0 && b == 0) || (a == 1 && b == 1) || (a == 2 && b == 2)
    puts aa,bb,"勝敗 = 引き分け"
  elsif (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0)
    puts aa,bb,"勝敗 = Aさんの勝ち"
  else
    puts aa,bb,"勝敗 = Bさんの勝ち"
  end
end

n = 0
while(n < 10)
  janken_each
  n += 1
end



