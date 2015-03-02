class AddTimetableIdAndSubjectIdToPeriodtime < ActiveRecord::Migration
  def change
    add_column :periodtimes, :subject_id,:integer
    add_column :periodtimes, :timetable_id, :integer
    remove_column :subjects, :timetable_id, :integer
  end
end
