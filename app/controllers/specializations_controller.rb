class SpecializationsController < ApplicationController
  before_action :authorize_request

  # GET /specializations
  def index
    @specializations = Specialization.where(profession_id: params[:profession_id])
    render json: @specializations, status: :ok
  end

  # POST /specializations
  def create
    @specialization = Specialization.new(name: params[:name], profession_id: params[:profession_id])
    if @specialization.save
      render json: @specialization, status: :created
    else
      render json: { errors: @specialization.errors.full_messages },
             status: :unprocessable_entity
    end
  end

end
