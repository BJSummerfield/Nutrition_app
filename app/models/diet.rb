class Diet < ApplicationRecord
	belongs_to :user
	validates(
						:protein,
						:sodium,
						:energy,
						:total_fat,
						:saturated_fat,
						:trans_fat,
						:cholesterol,
						:total_carbs,
						:dietary_fiber,
						:sugars,
						:vitamin_a,
						:vitamin_c,
						:calcium,
						:iron, 
						{
						numericality: true
						})
						
end
