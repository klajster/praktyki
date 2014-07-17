class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
    t.string :author
    t.string :post
    t.timestamps
    end
  end
end
