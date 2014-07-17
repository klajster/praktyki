class AddColumnUserIdToStatements < ActiveRecord::Migration
  def change
  
  	add_column :statements, :user_id, :integer

  end
end
