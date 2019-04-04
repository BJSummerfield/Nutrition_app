class RemoveNutrientsIdFromConsumptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :consumptions, :nutrients_id
  end
end
