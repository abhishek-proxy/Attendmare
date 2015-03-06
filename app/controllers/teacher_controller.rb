class TeacherController < ApplicationController
	skip_before_filter :verify_authenticity_token, only: [:create,:sign_in, :insert_teaching_subject]
	def create
		teacher = Teacher.new()
		response_json = teacher.create(params)
		render json: response_json
	end
    def sign_in
      teacher = Teacher.new()
      response_json = teacher.sign_in(params)
      render json: response_json
    end

    def insert_teaching_subject
      teacher = Teacher.new()
      response_json = teacher.create(params)
      render json: response_json
    end
end
