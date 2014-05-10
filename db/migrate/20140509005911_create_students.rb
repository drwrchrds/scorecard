class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cohort
      
      t.timestamps
    end
    
    add_index :students, :email, :unique => true
    
  end
end

