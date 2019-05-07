class Api::UsersController < ApplicationController

  def create
    if user.persisted?
      render json: {messages: 'User created successfully', success: true}, status: :created
    else
      render json: {messages: user.errors.full_messages, success: false}, status: :bad_request
    end
  end
  
  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end

  def user
    User.create(user_params)
  end

end

