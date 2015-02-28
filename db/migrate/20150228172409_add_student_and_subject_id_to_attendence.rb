class AddStudentAndSubjectIdToAttendence < ActiveRecord::Migration
  def change
  	add_column :attendence_records, :student_id,:integer
  	add_column :attendence_records, :subject_id,:integer
  end
end
