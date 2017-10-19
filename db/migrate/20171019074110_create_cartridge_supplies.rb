class CreateCartridgeSupplies < ActiveRecord::Migration
  def change
    create_table :cartridge_supplies do |t|
      t.integer :model
      t.integer :count
      t.integer :state
      t.date :date
      t.string :service

      t.timestamps null: false
    end
  end
end
