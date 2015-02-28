class Subject < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_many :attendence_records
end
