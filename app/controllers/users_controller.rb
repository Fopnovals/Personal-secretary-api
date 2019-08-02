class UsersController < ApplicationController
  respond_to? :json

  def index
    render json: User.all
  end

  def create
    logger.debug(user_params)
    @user = User.new(user_params)
    if @user.save
      log_in @user
      render json: @user
    else
      render json: {error: 'GAVNO'}
    end
  end

  def show
    render json: User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
