class Periodtime < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :subject
end
