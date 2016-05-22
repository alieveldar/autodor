class Remcolumntime < ActiveRecord::Migration
  def change
  	remove_column :reports, :time
  end
end
