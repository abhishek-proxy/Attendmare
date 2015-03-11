class SubjectController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:create]

  def create
    subject = Subject.new()
    response_json = subject.create(params)
    render json: response_json
  end
  def get_subject_from_branch_year
    subject = Subject.new()
    response_json = subject.get_subject_from_branch_year(params)
    render json: response_json
  end
end
