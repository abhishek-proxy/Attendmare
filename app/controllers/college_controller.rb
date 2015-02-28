class CollegeController < ApplicationController
	skip_before_filter :verify_authenticity_token, only: [:create]
	def create
		college = College.new()
		response_json = college.create(params)
		render json: response_json
	end
end
