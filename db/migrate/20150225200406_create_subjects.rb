class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :year
      t.string :semester
      t.string :branch
      

      t.timestamps
    end
  end
end
