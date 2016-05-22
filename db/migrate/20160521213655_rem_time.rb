class RemTime < ActiveRecord::Migration
  def change
  	remove_column :reports, :choos
  end
end
