class Subject < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_many :attendence_records
  has_many :periodtimes 
  def create(params)
    begin
      subject = Subject.new(required_params(params))
      result = subject.save!
    rescue
      result = false
    end
    if result
      return {msg: "record inserted", status: true}
    else
      return {msg: "wrong parameters", status: false}
    end
  end
  def required_params(params)
    params.permit(:name, :year, :semester, :branch, :timetable_id)
  end
end
