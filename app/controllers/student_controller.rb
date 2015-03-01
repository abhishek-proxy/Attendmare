class StudentController < ApplicationController
  def create
    student = Student.new()
    respone_json = student.create(params)
    render json: respone_json
  end
end
