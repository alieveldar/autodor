class CreateDayRoadLists < ActiveRecord::Migration
  def change
    create_table :day_road_lists do |t|
      t.date :day
      t.integer :fuel
      t.integer :station

      t.timestamps null: false
    end
  end
end
