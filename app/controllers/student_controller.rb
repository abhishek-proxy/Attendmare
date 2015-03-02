class StudentController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:create]
  
  def create
    student = Student.new()
    respone_json = student.create(params)
    render json: respone_json
  end
end
