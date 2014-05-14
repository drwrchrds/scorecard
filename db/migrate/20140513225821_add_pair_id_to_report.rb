class AddPairIdToReport < ActiveRecord::Migration
  def change
    add_column :reports, :pair_id, :integer, index: true
  end
end
