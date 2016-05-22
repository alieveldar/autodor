class AddColumnForTimeSet < ActiveRecord::Migration
  def change
  	add_column :reports, :choos, :text
  end
end
