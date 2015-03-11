class Subject < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_many :attendence_records
  has_many :periodtimes
  has_and_belongs_to_many :teachers
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

  def get_subject_from_branch_year(params)
    begin
      subjects = Subject.where(year: params[:year],branch: params[:branch])
      subject_json = []
      p params
      subjects.each do |subject|
        if ((subject.semester).to_i % 2 == (params[:semester].to_i) % 2)
          subject_json << map_subject(subject)
        else
         # subject_json << map_subject(subject)
        end

      end
    rescue
      return {msg: "something went wrong ", status: false}
    end
    return {msg: "request done", status: true, subjects: subject_json}
    
  end
  
  def map_subject(subject)
    return {name: subject.name, id: subject.id}

  end
  def required_params(params)
    params.permit(:name, :year, :semester, :branch, :timetable_id,)
  end
end
