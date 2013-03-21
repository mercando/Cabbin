class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.string :medallion_number

      t.timestamps
    end
  end
end
