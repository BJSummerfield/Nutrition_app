class AddColumnToDiet < ActiveRecord::Migration[5.2]
  def change
  	add_column :diets, :total_fat, :integer
  	add_column :diets, :saturated_fat, :integer
  	add_column :diets, :trans_fat, :integer
  	add_column :diets, :cholesterol, :integer
  	add_column :diets, :total_carbs, :integer
  	add_column :diets, :dietary_fiber, :integer
  	add_column :diets, :sugars, :integer
  	add_column :diets, :vitamin_a, :integer
  	add_column :diets, :vitamin_c, :integer
  	add_column :diets, :calcium, :integer
  	add_column :diets, :iron, :integer
  	add_column :diets, :user_id, :integer
  end
end
