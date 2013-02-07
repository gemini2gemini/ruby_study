# -*- encoding : utf-8 -*-
require "spec_helper" 

describe LoginsController do
  fixtures :users

  describe "newがGETされると" do
    before do
      get :new
    end
    it "newテンプレートが表示される" do
       response.should render_template("new")
    end
    it "@userに空のUserインスタンスが設定されている" do
      assigns(:user).should be_a_new(User)
    end
  end

  describe "正しいemail/passwordがcreateにPOSTされると" do
    before do
      post :create, {:user=>{:email=>'yamada@rails.com', :password=>'test1'}}
    end
    it "todosへリダイレクトする" do
      response.should redirect_to("/todos")
    end
    it "session[:login]にユーザーidがセットされる" do
      session[:login].should == users(:yamada).id
    end
  end

  it "正しくないemail/passwordがcreateにPOSTされるとnewが表示される" do
    post :create, {:user=>{:email=>'yamada@rails.com', :password=>'test0'}}
    response.should render_template("new")
  end

  describe "destroyがDELETEされると" do
    before do
      delete :destroy, {:id=>users(:yamada).id}
    end
    it "session[:login]がnilになる"do
      session[:login].should == nil
    end
    it "newへリダイレクトする" do
      response.should render_template("new")
    end
  end

end
