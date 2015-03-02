class SubjectController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:create]

  def create
    subject = Subject.new()
    response_json = subject.create(params)
    render json: response_json
  end
end
