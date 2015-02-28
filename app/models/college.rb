class College < ActiveRecord::Base
  has_many :students
  has_many :teachers


  def create(params)
  	begin
  		college = College.new(required_params(params))
  		result = college.save!
  	rescue
  		result = false
  	end
  	if result
  		return {msg: "college details has been inserted",status: true}
  	else
  		return {msg: "college details could not be inserted please fill the details properly", status: false}
  	end
  end



  
  private
  def required_params(params)
  	params.permit(:college_name,:phone,:address)
  end
end
