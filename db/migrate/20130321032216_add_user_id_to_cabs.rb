class AddUserIdToCabs < ActiveRecord::Migration
  def change
    add_column :cabs, :user_id, :integer
    add_index :cabs, :user_id
  end
end
