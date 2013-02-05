# -*- encoding : utf-8 -*-

require 'person'

describe Person do

  it "newは引数で渡された名前、身長、体重を持つインスタンスを作る" do
    p1 = Person.new('山田太郎', 171, 71)
    p1.name.should == '山田太郎'
    p1.height.should == 171
    p1.weight.should == 71
  end

  it "身長、体重は変更出来るが、名前は変更できない" do
    p1 = Person.new('山田太郎', 171, 71)
    p1.height = 172
    p1.weight = 72
    p1.height.should == 172
    p1.weight.should == 72
    expect { p1.name = '山田次郎' }.should raise_error( NoMethodError )
  end

  it "bmi値が計算できる" do
    p1 = Person.new('山田太郎', 171, 71)
    p1.bmi.should be_within(0.1).of(24.28)
  end

  it "bmi値から、やせすぎ、標準、肥満、高度肥満を判定できる" do
   Person.new('山田1号', 185, 55).judge.should == "やせ" 
   Person.new('山田2号', 171, 71).judge.should == "標準" 
   Person.new('山田3号', 171, 85).judge.should == "肥満" 
   Person.new('山田4号', 171, 100).judge.should == "高度肥満" 
  end
end
