class RemoveUserIdFromCabs < ActiveRecord::Migration
  def up
    remove_column :cabs, :user_id
  end

  def down
    add_column :cabs, :user_id, :integer
    add_index :cabs, :user_id
  end
end
