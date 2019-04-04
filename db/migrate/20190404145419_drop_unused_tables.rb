class DropUnusedTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :favorites
    drop_table :nutrients
  end
end
