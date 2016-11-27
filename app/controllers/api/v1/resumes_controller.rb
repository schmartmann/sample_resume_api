class Api::V1::ResumesController < ApplicationController
  def index
    @resumes = Resume.all
    render json: @resumes
  end

  def show
    @resume = Resume.find_by(params[:id])
    render json: @resume
  end
end
