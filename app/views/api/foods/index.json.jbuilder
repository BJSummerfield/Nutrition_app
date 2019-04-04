# json.nutrients @foods.each do |food|
#   json.ndbno food["food"]["desc"]["ndbno"]
#   json.name food["food"]["desc"]["name"]
#   # json.nutrition food["food"]["nutrients"].each do |nutrient|
#   #   json.name nutrient["name"]
#   #   json.value nutrient["value"]
#   #   json.unit nutrient["unit"]
#   # end
# end

json.food @foods


