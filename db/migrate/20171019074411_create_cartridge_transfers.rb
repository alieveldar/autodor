class CreateCartridgeTransfers < ActiveRecord::Migration
  def change
    create_table :cartridge_transfers do |t|
      t.integer :model
      t.integer :count
      t.date :date
      t.text :department
      t.integer :person_out
      t.text :person_in

      t.timestamps null: false
    end
  end
end
