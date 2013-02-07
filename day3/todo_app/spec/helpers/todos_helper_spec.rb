# -*- encoding : utf-8 -*-
require "spec_helper" 

describe TodosHelper do
  describe "newlineメソッドは" do
    it "改行を<br />タグに置き換える" do
      helper.new_line("abc\nxyz\n123").should == "abc<br />xyz<br />123" 
    end
    it "渡された文字列内のタグはエスケープする" do
      helper.new_line("<br />\n").should == "&lt;br /&gt;<br />" 
    end
  end
end