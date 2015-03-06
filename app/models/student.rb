class Student < ActiveRecord::Base
  belongs_to :college
  has_and_belongs_to_many :subjects
  has_many :attendence_records
  
  
  def create(params)
    begin
      student = Student.new(required_params(params))
      result = student.save!
    rescue
      result = false
    end
    if result
      return {msg: "student record inserted",status: true}
    else
      return {msg: "please fill the details properly", status: false}

    end
  end



  def required_params(params)
    params.permit(:first_name, :last_name,:email, :year,:semester, :branch, :date_of_birth, :phone, :gender, :college_id, :roll_no, :reg_no)
  end
end
