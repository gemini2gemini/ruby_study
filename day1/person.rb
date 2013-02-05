# -*- encoding : utf-8 -*-
class Person
  def initialize(name,height,weight)
    @name = name
    @height = height
    @weight = weight
  end

  def bmi
    height_m = @height / 100.0
    @weight / (height_m ** 2)
  end
  

  def judge
    if bmi < 18.5
      "やせ"
    elsif bmi < 25.0
      "標準"
    elsif bmi < 30.0
      "肥満"
    else
      "高度肥満"
    end
  end

  attr_accessor :height, :weight
  attr_reader :name

end



p1 = Person.new('山田太郎',171,71)

