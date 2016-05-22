class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	
      t.integer :station
      t.integer :f95
      t.integer :f92
      t.integer :f80
      t.integer :fdt
      t.integer :fgaz
      t.integer :magazine
      t.integer :vipcardonstock
      t.integer :vipcardtreid
      t.integer :discountonstock
      t.integer :discounttreid
      t.integer :carwasher
      t.integer :allinstation
      t.integer :allf95
      t.integer :allf92
      t.integer :allf80
      t.integer :allfdt
      t.integer :allfgaz
      t.integer :allmagazine
      t.integer :allvipcardonstock
      t.integer :allvipcardtreid
      t.integer :alldiscountonstock
      t.integer :alldiscounttreid
      t.integer :allcarwasher
      t.date :time
      t.timestamps null: false
    end
    def change_table :reports do |t|
      t.date :time
    end
  end
end
