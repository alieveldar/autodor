class AddTimeToReports < ActiveRecord::Migration
  
  	def change
  		change_table :reports do |t|
      t.date :time
    end
  end
end
