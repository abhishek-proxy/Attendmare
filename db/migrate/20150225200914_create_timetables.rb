class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.time :period_time
      t.date :date
      t.string :year
      t.string :semester
      t.string :branch

      t.timestamps
    end
  end
end
