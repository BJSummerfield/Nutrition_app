class RemoveDateFromConsumption < ActiveRecord::Migration[5.2]
  def change
    remove_column :consumptions, :date, :string
  end
end
