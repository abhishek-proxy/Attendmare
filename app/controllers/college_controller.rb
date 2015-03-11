class CollegeController < ApplicationController
	skip_before_filter :verify_authenticity_token, only: [:create]
	def create
		college = College.new()
		response_json = college.create(params)
		render json: response_json
	end
    def get_college_branch
      college = College.new()
      response_json = college.get_college_branch(params)
      render json: response_json
    end
end
