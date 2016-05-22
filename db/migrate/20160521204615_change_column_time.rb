class ChangeColumnTime < ActiveRecord::Migration
  def change
  	change_column :reports, :time, :string
  end
end
