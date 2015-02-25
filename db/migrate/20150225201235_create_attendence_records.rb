class CreateAttendenceRecords < ActiveRecord::Migration
  def change
    create_table :attendence_records do |t|
      t.date :day
      t.string :attend_record

      t.timestamps
    end
  end
end
