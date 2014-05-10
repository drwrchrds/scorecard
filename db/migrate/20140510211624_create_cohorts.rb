class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :start, index: true

      t.timestamps
    end
  end
end
