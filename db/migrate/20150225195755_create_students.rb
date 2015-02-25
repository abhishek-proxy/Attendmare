class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :year
      t.string :semester
      t.string :branch
      t.datetime :date_of_birth
      t.string :phone
      t.string :gender

      
      
      t.timestamps
    end
  end
end
