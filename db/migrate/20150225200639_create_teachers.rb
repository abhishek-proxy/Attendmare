class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.integer :staff_no
      t.string :password
      t.string :last_name
      t.string :dept
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
