class Chdcolumn1 < ActiveRecord::Migration
  def change
  	change_column :reports, :time, :text
end
end