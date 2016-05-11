class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :master

      t.timestamps null: false
    end
  end
end
