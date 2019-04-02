class Api::FoodsController < ApplicationController
  def index
    response = HTTP.get("https://api.nal.usda.gov/ndb/search/?format=json&q=egg&max=5&fg=&offset=0&api_key=#{ENV["API_KEY"]}")
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
end
