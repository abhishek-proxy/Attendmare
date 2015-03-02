class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.string :day
      t.string :year
      t.string :semester
      t.string :branch

      t.timestamps
    end
  end
end
