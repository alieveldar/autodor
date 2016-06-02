class AddDeletedAtToReports < ActiveRecord::Migration
  def change
    add_column :reports, :deleted_at, :datetime
  end
end
