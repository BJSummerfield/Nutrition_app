class Api::ConsumptionsController < ApplicationController

  before_action :authenticate_user
  
  def create
    if consumption.persisted?
      render json: {messages: 'consumption created successfully', success: true}, status: :created
    else
      render json: {messages: consumption.errors.full_messages, success: false}, status: :bad_request
    end
  end

  private
  
  def consumption
    Consumption.create(consumption_params)
  end

  def consumption_params
    params.permit(
      :meal, 
      :name, 
      :protein, 
      :sodium, 
      :energy).
    merge(
      user_id: current_user.id
        )
  end
end