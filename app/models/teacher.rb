class Teacher < ActiveRecord::Base
  belongs_to :college
  has_and_belongs_to_many :subjects
  def create(params)
  	begin
  		teacher = Teacher.new(required_params(params))
  		result = teacher.save!
  	rescue
  		result = false
  	end
  	if result
  		return {msg: "teacher details entered", status: true, teacher_id: teacher.id}
  	else
  		return {msg: "please fill the details properly", status: false}
  	end
  end

  def teachers_students(params)

  end
  def insert_teaching_subject(params)
    begin
      teacher = Teacher.find(params[:teacher_id].to_i)
      subject_ids = []
      subject_ids = params[:subject_ids].split(",")
      subject_ids.each do |subject_id|
        subject = Subject.find(subject_id.to_i)
        teacher.subjects << subject
      end
    rescue
    end
  end


  def sign_in(params)
    begin
      teacher = Teacher.find_by(staff_no: params[:staff_no].to_i,college_id: params[:college_id].to_i)
      is_correct = teacher.password.eql?params[:password]
      p teacher
      if (is_correct && teacher != nil)
        subjects_details = map_subject(teacher.subjects)
        return {msg: "subjects detail",status: true,subject_details: subjects_details}
      else
        return {msg: "wrong credentials",status: false}
      end
    rescue
      return {msg: "in rescue"}
    end
  end
  def map_subject(subjects)
    subjects_details = subjects.map{|subject|{name: subject.name, subject_id: subject.id}}
    return subjects_details
  end
  private
  def required_params(params)
  	params.permit(:first_name,:last_name,:dept,:college_id,:email,:phone, :staff_no,:password)
  end
end
