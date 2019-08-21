class ServicesController < ApplicationController
  before_action :authorize_request

  # GET /services
  def index
    @services = Service.where(specialization_id: params[:specialization_id])
    render json: @services, status: :ok
  end

  # POST /service
  def create
    @service = Service.new(name: params[:name], specialization_id: params[:specialization_id])
    if @service.save
      render json: @service, status: :created
    else
      render json: { errors: @service.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
