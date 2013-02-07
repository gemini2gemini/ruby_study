# -*- encoding : utf-8 -*-
require "spec_helper" 

describe User do
  fixtures :users

  describe "保存時に" do
    it "パスワードが与えられた場合は暗号化して格納する" do
      # ここを考えて下さい
    end

    it "パスワードが空文字列の場合はpasswordカラムは変更されない" do
      # ここを考えて下さい
    end
  end

  describe "registered?メソッド" do
    it "正しくないemail/passwordに対してはfalseを戻す" do
      u = User.new(:email=>"yamada@rails.com", :password=>"test3")
      u.registered?.should be_false
    end

    it "正しいemail/passwordに対してはtrueを戻す" do
      u = User.new(:email=>"yamada@rails.com", :password=>"test1")
      u.registered?.should be_true
    end

    it "正しいemail/passwordで認証した時は認証者のidがセットされる" do
      u = User.new(:email=>"yamada@rails.com", :password=>"test1")
      u.registered?
      u.id.should == users(:yamada).id
    end

  end
end
