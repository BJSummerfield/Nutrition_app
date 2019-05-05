class Api::DietsController < ApplicationController
	# before_action :authenticate_user
	
  def show
    @diet = Diet.find_by(user_id: current_user.id)
    render 'show.json.jbuilder'
  end

  def create
	  if diet_create.persisted?
      	render json: {messages: 'diet created successfully', success: true}, status: :created
      else
      	render json: {messages: diet_create.errors.full_messages, success: false}, status: :bad_request
    end
	end



	def update
		@diet = Diet.find_by(user_id: params[:user_id])
		if @diet.update(diet_params)
			render json: {messages: 'diet updated successfully', success: true}, status: :updated
		else
			render json: {messages: diet.errors.full_messages, success: :false}, status: :bad_request
		end
	end

  private
 
  def diet_create
    Diet.create(diet_params)
  end

  def diet_params
    params.permit(
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
