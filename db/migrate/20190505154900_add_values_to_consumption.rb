class AddValuesToConsumption < ActiveRecord::Migration[5.2]
  def change
  	add_column :consumptions, :total_fat, :integer
  	add_column :consumptions, :saturated_fat, :integer
  	add_column :consumptions, :trans_fat, :integer
  	add_column :consumptions, :cholesterol, :integer
  	add_column :consumptions, :total_carbs, :integer
  	add_column :consumptions, :dietary_fiber, :integer
  	add_column :consumptions, :sugars, :integer
  	add_column :consumptions, :vitamin_a, :integer
  	add_column :consumptions, :vitamin_c, :integer
  	add_column :consumptions, :calcium, :integer
  	add_column :consumptions, :iron, :integer
  end
end
