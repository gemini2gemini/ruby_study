# -*- encoding : utf-8 -*-
class Jyanken
  def poi
    self.hand
    self.to_s
  end

  def hand
    @hand = rand(3)   
  end

  def to_s
    jyanken_s = ["グー", "チョキ", "パー"]
    jyanken_s[@hand]
  end

  def judge(b)
    if ( self.hand == b.hand )
      "引き分け"
    elsif ( self.hand == 0 && b.hand == 1 ) or (self.hand == 1 && b.hand == 2 ) or (self.hand == 2 && b.hand == 0)
      "勝ち"
    else
      "負け"
    end
  end
end
 
a = Jyanken.new
b = Jyanken.new

10.times do |n|
  a.poi
  b.poi
  puts "#{n + 1}回戦"
  puts " Aさん：#{a} Bさん：#{b}"
  puts "勝負 = Aさんの" + a.judge(b)
end




 
  end
end

a = Jyanken.new
b = Jyanken.new

10.times do |n|
  a.poi
  b.poi
  puts "{





