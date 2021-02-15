class SessionsController < ApplicationController
  def create
    user = User.where(email: params[:email]).first
    if user&.valid_password?(params[:password])
      render json: user.as_json(only: %i[email authentication_token]), status: :created

    else
      head(:unauthorized)
    end
  end

  def loggedin
    render json: User.all
  end

  def logout
    current_user.authentication_token = nil
    current_user.save
    render json: current_user
  end
end
