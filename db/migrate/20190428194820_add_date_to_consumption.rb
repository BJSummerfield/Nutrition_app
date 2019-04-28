class AddDateToConsumption < ActiveRecord::Migration[5.2]
  def change
    add_column :consumptions, :date, :string
  end
end
