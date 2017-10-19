class CreateCartridges < ActiveRecord::Migration
  def change
    create_table :cartridges do |t|
      t.string :model

      t.timestamps null: false
    end
  end
end
