class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :student, index: true
      t.string :day, index: true
      t.string :finished_exercises
      t.string :read_solutions
      t.string :read_readings
      t.integer :material_rating
      t.text :good_concept
      t.text :bad_concept
      t.integer :pair_rating
      t.text :pair_comments
      t.text :comments

      t.timestamps
    end
  end
end
