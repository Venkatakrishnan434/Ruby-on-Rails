class Fixcolumnname < ActiveRecord::Migration[6.1]
  def change
    rename_column :todos, :Completed , :completed
  end
end
