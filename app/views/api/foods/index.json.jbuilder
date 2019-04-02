json.nutrients @foods.each do |food|
  json.name food["food"]["desc"]["name"]
  json.nutrition food["food"]["nutrients"].each do |nutrient|
    json.name nutrient["name"]
    json.value nutrient["value"]
    json.unit nutrient["unit"]
  end
end
