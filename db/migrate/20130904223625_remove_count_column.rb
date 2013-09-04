class RemoveCountColumn < ActiveRecord::Migration
  def change
    remove_column :todos, :todo_count, :integer
  end
end
