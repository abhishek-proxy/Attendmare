class RemoveTeacherIdFromSubject < ActiveRecord::Migration
  def change
    remove_column :subjects, :teacher_id, :integer
  end
end
