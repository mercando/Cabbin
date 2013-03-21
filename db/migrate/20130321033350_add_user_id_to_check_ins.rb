class AddUserIdToCheckIns < ActiveRecord::Migration
  def change
    add_column :check_ins, :user_id, :integer
    add_index :check_ins, :user_id
  end
end
