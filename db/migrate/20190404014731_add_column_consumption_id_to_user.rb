class AddColumnConsumptionIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :consumption_id, :integer
  end
end
