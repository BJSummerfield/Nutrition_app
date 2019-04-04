class Api::FoodsController < ApplicationController
  def index
    food = params[:food]
    group = params[:group]
    response = HTTP.get("https://api.nal.usda.gov/ndb/search/?format=json&q=#{food}&max=3&fg=#{group}&offset=0&api_key=#{ENV["API_KEY"]}")
    foods = response.parse #Search terms q=search fg = database type

    ndbno = []
    foods["list"]["item"].each do |food|
      ndbno << food["ndbno"]
    end

    response = HTTP.get("https://api.nal.usda.gov/ndb/V2/reports?ndbno=#{ndbno.join("&ndbno=")}&type=b&format=json&api_key=#{ENV["API_KEY"]}")
    list = response.parse

    @foods = []
    list["foods"].each do |food|
      @foods << food
    end
    
    render 'index.json.jbuilder'    
  end

  def show
    ndbno = params[:ndbno]
    response = HTTP.get("https://api.nal.usda.gov/ndb/V2/reports?ndbno=#{ndbno}&type=b&format=json&api_key=#{ENV["API_KEY"]}")
    @food = response.parse
    render 'show.json.jbuilder'
  end
end

# Food groups 
# 0100 - Dairy and Egg Products
# 0200 - Spices and Herbs
# 0300 - Baby Foods
# 0400 - Fats and Oils
# 0500 - Poultry Products
# 0600 - Soups, Sauces, and Gravies
# 0700 - Sausages and Luncheon Meats
# 0800 - Breakfast Cereals
# 0900 - Fruits and Fruit Juices
# 1000 - Pork Products
# 1100 - Vegetables and Vegetable Products
# 1200 - Nut and seed Products
# 1300 - Beef Products
# 1400 - Beverages
# 1500 - FinFish and Shellfish Products
# 1600 - Legumes and Legume Products
# 1700 - Lamb, Veal, and Game Products
# 1800 - Baked Products
# 1900 - Sweets
# 2000 - Cereal Grains and Pasta
# 2100 - Fast Foods
# 2200 - Meals, Entrees, and Side Dishes

# https://ndb.nal.usda.gov/ndb/nutrients/index nutrients list