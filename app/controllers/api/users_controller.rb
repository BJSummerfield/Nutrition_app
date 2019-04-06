class Api::UsersController < ApplicationController
  
  def create
    if user
      render json: {messages: 'User created successfully', success: true}, status: :created
    else
      render json: {messages: user.errors.full_messages, success: false}, status: :bad_request
    end
  end
  
  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  def user
    @user ||= User.create(user_params)
  end
end

