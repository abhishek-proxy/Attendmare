class Studentsubjects < ActiveRecord::Migration
  def change
  	create_table :students_subjects, id: false do |t|
  		t.integer :subject_id
  		t.integer :student_id
  	end
  end
end
