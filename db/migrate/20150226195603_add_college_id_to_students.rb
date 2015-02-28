class AddCollegeIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :college_id,:integer
    add_column :teachers, :college_id,:integer
  end
end
