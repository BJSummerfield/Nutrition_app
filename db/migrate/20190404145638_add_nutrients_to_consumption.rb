class AddNutrientsToConsumption < ActiveRecord::Migration[5.2]
  def change
    add_column :consumptions, :protein, :integer
    add_column :consumptions, :sodium, :integer
    add_column :consumptions, :energy, :integer
  end
end
