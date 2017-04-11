class ChangeDistanceToStation < ActiveRecord::Migration
  def change
  	change_column :stations, :distance, :integer
  end
end
