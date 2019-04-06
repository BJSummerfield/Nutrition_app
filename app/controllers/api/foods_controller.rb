class Api::FoodsController < ApplicationController
  def index
    ndbno = Foodapi.ndbno_list(ndbno_params)
    @foods = Foodapi.food_list(ndbno)
    render 'index.json.jbuilder'    
  end

  def show
    @food = Foodapi.food_list(params[:ndbno])
    render 'show.json.jbuilder'
  end
  private

  def ndbno_params
    params.permit(:food, :group)
  end
end



# https://ndb.nal.usda.gov/ndb/nutrients/index nutrients list