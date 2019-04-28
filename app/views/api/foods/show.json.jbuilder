# json.name @food[0][:food][:desc][:name]
# @food[0][:food][:nutrients].each do |nutrient|
#   json.serving nutrient[:measures].map { |nutrient| nutrient[:label]  }
#   end

json.food @food[0][:food]

