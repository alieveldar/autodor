class ChangeTimeToChangetime < ActiveRecord::Migration
  def change
    remove_column :reports, :time
    change_table :reports do |t|
    t.date :changetime
  end
  end
 
end