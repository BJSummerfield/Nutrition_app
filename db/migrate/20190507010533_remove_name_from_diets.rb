class RemoveNameFromDiets < ActiveRecord::Migration[5.2]
  def change
    remove_column :diets, :name, :string
  end
end
