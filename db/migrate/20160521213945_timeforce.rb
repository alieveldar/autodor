class Timeforce < ActiveRecord::Migration
  def change
  	add_column :reports, :time, :datetime
  end
end
