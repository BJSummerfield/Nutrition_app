# json.nutrients @foods.each do |food|
#   json.food food[:food][:desc][:name]
#   json.ndbno food[:food][:desc][:ndbno]
  # json.name food["food"]["desc"]["name"]
  # json.nutrition food["food"]["nutrients"].each do |nutrient|
  #   json.name nutrient["name"]
  #   json.measures nutrient["measures"].each do |x|
  #     json.measures x
  #   end
  #   json.unit nutrient["unit"]
  # end
# end

json.array! @foods.each do |food|
  json.food food[:food]
end

