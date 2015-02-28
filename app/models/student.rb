class Student < ActiveRecord::Base
  belongs_to :college
  has_and_belongs_to_many :subjects
  has_many :attendence_records
end
