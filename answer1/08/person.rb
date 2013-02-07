# -*- encoding : utf-8 -*-
class Person
  def initialize(name,height,weight)
    @name = name
    @height = height
    @weight = weight
  end

  def bmi
    @weight / (@height / 100.0) **2
  end

  def judge
    v = bmi
    case
    when v < 18.5
      "やせ"
    when 18.5 <= v && v < 25
      "標準"
    when 25 <= v && v < 30
      "肥満"
    when v >= 30
      "高度肥満"
    end
  end

  attr_reader   :name
  attr_accessor :height, :weight
end
