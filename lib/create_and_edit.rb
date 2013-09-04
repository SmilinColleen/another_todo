module CreateAndEdit

  def parse_list_name
    @list_name = params[:todo].delete(:list_name)
    @list_name = @list_name.downcase
    @list_name = @list_name.gsub ' ', '-'
  end

  def update_todos
    @todo.update_attributes :list_name => @list_name
    @todos = Todo.where :list_name => @list_name
    @todos.each do |todo|
      todo.update_attributes :todo_count => @todos.count
      todo.save
    end
  end

end
