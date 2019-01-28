class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.text :ingredient
      t.integer :product_id
      t.timestamps
    end
  end
end
