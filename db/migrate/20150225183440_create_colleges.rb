class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :college_name
      t.string :phone
      t.string :address
      t.timestamps
    end
  end
end
