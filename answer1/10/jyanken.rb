# -*- encoding : utf-8 -*-
class Jyanken
  Pa    = 0
  Choki = 1
  Guu   = 2
  Spell = ["パー", "チョキ", "グー"]

  def poi
    @hand = rand(3)
  end

  def to_s
    return Spell[@hand]
  end

  def judge(your)
    if (@hand == your.hand)
      "引き分け"
    elsif (@hand == Pa && your.hand == Guu ||
           @hand == Choki && your.hand == Pa ||
           @hand == Guu && your.hand == Choki)
      "勝ち"
    else
      "負け"
    end
  end

  attr_reader :hand
end

a = Jyanken.new
b = Jyanken.new

10.times do |n|
  a.poi
  b.poi
  puts "#{n + 1}回戦" 
  puts "  Aさん：#{a}  Bさん： #{b}"
  puts "  勝負 = Aさんの" + a.judge(b)
end
