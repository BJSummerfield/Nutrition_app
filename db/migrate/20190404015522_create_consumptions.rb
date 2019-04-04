class CreateConsumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :consumptions do |t|
      t.integer :user_id
      t.integer :nutrients_id
      t.string :date
      t.string :meal

      t.timestamps
    end
  end
end
