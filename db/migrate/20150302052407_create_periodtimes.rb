class CreatePeriodtimes < ActiveRecord::Migration
  def change
    create_table :periodtimes do |t|
    	t.time :period_time

      t.timestamps
    end
  end
end
