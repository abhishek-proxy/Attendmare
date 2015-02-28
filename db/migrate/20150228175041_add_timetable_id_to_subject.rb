class AddTimetableIdToSubject < ActiveRecord::Migration
  def change
  	add_column :subjects, :timetable_id,:integer
  end
end
