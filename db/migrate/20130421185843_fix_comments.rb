class FixComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :check_in_id
      t.integer :cab_id

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :check_in_id
    add_index :comments, :cab_id
  end
end
