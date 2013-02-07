class TodosController < ApplicationController
  before_filter :require_login

  # GET /todos
  def index

    #@todos = Todo.all
    @todos = Todo.order("due DESC").page(params[:page]).per(3)
  end

  # GET /todos/1
  def show
    @todo = Todo.find(params[:id])

    if request.headers["X-Requested-With"] == "XMLHttpRequest"
      render partial: 'show_body'
    end
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  def create
    @todo = Todo.new(params[:todo])

    if @todo.save
      redirect_to @todo, notice: 'Todo was successfully created.'
    else
      render action: "new" 
    end
  end

  # PUT /todos/1
  def update
    @todo = Todo.find(params[:id])

    if @todo.update_attributes(params[:todo])
      redirect_to @todo, notice: 'Todo was successfully updated.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /todos/1
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_url
  end

  private

  def require_login
    if session[:login] == nil
      redirect_to new_login_url
    end
  end

end