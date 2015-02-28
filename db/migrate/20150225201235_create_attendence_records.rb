class CreateAttendenceRecords < ActiveRecord::Migration
  def change
    create_table :attendence_records do |t|
      t.date :attendence_date
      t.string :attend_status
      t.timestamps
    end
  end
end
