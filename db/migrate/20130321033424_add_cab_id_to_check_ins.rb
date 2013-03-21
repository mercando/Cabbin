class AddCabIdToCheckIns < ActiveRecord::Migration
  def change
    add_column :check_ins, :cab_id, :integer
    add_index :check_ins, :cab_id
  end
end
