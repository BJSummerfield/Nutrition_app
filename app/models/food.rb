class Food < ApplicationRecord

  def info
    ndbno = []
    @foods["list"]["item"].each do |food|
      ndbno << food["ndbno"]
    end

    response = HTTP.get("https://api.nal.usda.gov/ndb/V2/reports?ndbno=#{ndbno.join("&ndbno=")}&type=b&format=json&api_key=#{ENV["API_KEY"]}")
    list = response.parse

    @foods = []
    list["foods"].each do |food|
      @foods << food
    end
  end
end
