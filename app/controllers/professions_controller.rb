class ProfessionsController < ApplicationController
  before_action :authorize_request

  # GET /professions
  def index
    @professions = Profession.all
    render json: @professions, status: :ok
  end

  # POST /profession
  def create
    @profession = Profession.new(name: params[:name])
    if @profession.save
      render json: @profession, status: :created
    else
      render json: { errors: @profession.errors.full_messages },
             status: :unprocessable_entity
    end
  end

end
