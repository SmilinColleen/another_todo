module CreateAndEdit

  def parse_list_name
    @list_name = params[:todo].delete(:list_name)
    @list_name = @list_name.downcase
    @list_name = @list_name.gsub ' ', '-'
    params[:todo][:list_name] = @list_name
  end

end
