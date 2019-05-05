class Api::ConsumptionsController < ApplicationController

  before_action :authenticate_user
  
  def index
    @consumptions = current_user.consumptions.where(user_id: current_user.id)
    render "index.json.jbuilder"
  end 

  def show
    @consumption = Consumption.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
  

  def create
    if consumption.persisted?
      render json: {messages: 'consumption created successfully', success: true}, status: :created
    else
      render json: {messages: consumption.errors.full_messages, success: false}, status: :bad_request
    end
  end

  def destroy
    @consumption = Consumption.find_by(id: params[:id])
    @consumption.destroy
    render json: {message: "Successfully Destroyed Product"}
  end

  private
  
  def consumption
    Consumption.create(consumption_params)
  end

  def consumption_params
    params.permit(
      :meal, 
      :name, 
      :energy,
      :total_fat,
      :saturated_fat,
      :trans_fat,
      :cholesterol,
      :sodium,
      :total_carbs,
      :dietary_fiber,
      :sugars,
      :protein,
      :vitamin_a,
      :vitamin_c,
      :calcium,
      :iron,
      :date).
    merge(
      user_id: current_user.id
        )
  end
end