class Teacher < ActiveRecord::Base
  belongs_to :college

  def create(params)
  	begin
  		teacher = Teacher.new(required_params(params))
  		result = teacher.save!
  	rescue
  		result = false
  	end
  	if result
  		return {msg: "teacher details entered", status: true}
  	else
  		return {msg: "please fill the details properly", status: false}
  	end
  end
  private
  def required_params(params)
  	params.permit(:first_name,:last_name,:dept,:college_id,:email,:phone)
  end
end
