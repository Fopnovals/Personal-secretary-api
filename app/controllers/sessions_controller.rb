class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      render json: user
    else
      render json: {error: 'Invalid email/password combination'}
    end
  end

  def destroy
    log_out if logged_in?
  end
end
