class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.text :name
      t.text :quantity
      t.text :text
      t.timestamps
    end
  end
end
