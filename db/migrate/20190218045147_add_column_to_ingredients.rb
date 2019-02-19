class AddColumnToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :product_id, :integer
  end
end
