class LoginsController < ApplicationController
  def new
    #@todo = Todo.new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.registered?
        session[:login] = @user.id
        redirect_to todos_path
    else
       render action: "new" 
    end
  end

  def destroy
    session[:login] = nil
    redirect_to new_login_url
  end
end
