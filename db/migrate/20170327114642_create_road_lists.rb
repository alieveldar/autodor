class CreateRoadLists < ActiveRecord::Migration
  def change
    create_table :road_lists do |t|
      t.date :date
      t.text :timeout
      t.text :timein
      t.integer :fuelout
      t.integer :fuelin
      t.integer :cardcredit
      t.integer :fuelnorm
      t.integer :fuelfakt
      t.integer :odometr
      t.text :maping

      t.timestamps null: false
    end
  end
end
