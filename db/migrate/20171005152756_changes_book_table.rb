class ChangesBookTable < ActiveRecord::Migration
  def change
	  add_column :books,:year,:integer
	  rename_column :books,:name,:book_name
	  remove_timestamps :users
  end
end
