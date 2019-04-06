class Api::ConsumptionsController < ApplicationController

before_action :authenticate_user
  
  def create
    if consumption
      render json: {messages: 'User created successfully', success: true}, status: :created
    else
      render json: {messages: consumption.errors.full_messages, success: false}, status: :bad_request
    end
  end

  private
  
  def consumption
    x = current_user
    @consumption ||= Consumption.create!(
      
      consumption_params
      )
  end

  def consumption_params
    params.permit(
      :meal, 
      :name, 
      :protein, 
      :sodium, 
      :energy,
      )
  end
end
