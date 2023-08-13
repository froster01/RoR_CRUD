class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :species
      t.string :colour
      t.float :price

      t.timestamps
    end
  end
end
