class AddColumnAgeToStatement < ActiveRecord::Migration
  def change
  	add_column :statemets, :age, :integer
  end
end
