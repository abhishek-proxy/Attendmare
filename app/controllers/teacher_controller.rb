class TeacherController < ApplicationController
	skip_before_filter :verify_authenticity_token, only: [:create]
	def create
		teacher = Teacher.new()
		response_json = teacher.create(params)
		render json: response_json
	end
end
