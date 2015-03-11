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

  def get_college_branch(params)
    begin
      college = College.find(params[:college_id])
      student_branches = college.students.select("DISTINCT(BRANCH)")
      branches = []
      student_branches.each do |branch|
        branches<<branch.branch
      end
    rescue
    end
    return {msg: "got college branch",status: "true", branches: branches}
  end


  
  private
  def required_params(params)
  	params.permit(:college_name,:phone,:address)
  end
end
