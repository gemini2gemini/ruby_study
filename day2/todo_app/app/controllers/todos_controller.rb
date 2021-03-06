class TodosController < ApplicationController
  # GET /todos
  def index
    #@todos = Todo.all
    @todos = Todo.order("due DESC").all
    logger.debug
  end

  # GET /todos/1
  def show
    @todo = Todo.find(params[:id])
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
end