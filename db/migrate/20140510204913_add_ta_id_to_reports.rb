class AddTaIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :ta_id, :integer
  end
end
