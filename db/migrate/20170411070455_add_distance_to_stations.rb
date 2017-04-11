class AddDistanceToStations < ActiveRecord::Migration
  def change
    add_column :stations, :distance, :decimal
  end
end
