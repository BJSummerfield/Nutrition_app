class CreateDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.string :name
      t.integer :protein
      t.integer :sodium
      t.integer :energy

      t.timestamps
    end
  end
end
