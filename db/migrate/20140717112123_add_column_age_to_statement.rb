class AddColumnAgeToStatement < ActiveRecord::Migration
  def change
  	add_column :statements, :age, :integer
  end
end
