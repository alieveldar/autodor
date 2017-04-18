class AddOutcityToStation < ActiveRecord::Migration
  def change
    add_column :stations, :outcity, :integer
  end
end
