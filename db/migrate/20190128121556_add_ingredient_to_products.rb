class AddIngredientToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :ingredient, :text, null: false
  end
end
