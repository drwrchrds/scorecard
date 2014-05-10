class CreateTa < ActiveRecord::Migration
  def change
    create_table :ta do |t|
      t.boolean :current
      t.string :first_name
      t.string :last_name
      t.string :email, index: true

      t.timestamps
    end
  end
end
