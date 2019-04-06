class AddNameToConsumption < ActiveRecord::Migration[5.2]
  def change
    add_column :consumptions, :name, :string
  end
end
