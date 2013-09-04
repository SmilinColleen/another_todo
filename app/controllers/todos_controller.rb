class TodosController < ApplicationController
  before_filter :load_todos

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def show
    @todo = Todo.find params[:id]
  end

  def create
    parse_list_name
    @todo = Todo.new params[:todo]
    if @todo.save
      update_todos
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @todo = Todo.find params[:id]
  end

  def update
    @todo = Todo.find params[:id]
    parse_list_name
    if @todo.update_attributes params[:todo]
      update_todos
      redirect_to @todo
    else
      render :edit
    end
  end

  private

  def load_todos
    @todos = Todo.all
  end
end
