class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
	    
	    t.string :name
	    t.integer :age
	    t.integer :roll_no
	    t.text :address

      t.timestamps
    end
  end
end


