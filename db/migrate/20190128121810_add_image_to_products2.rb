class AddImageToProducts2 < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image, :text, null: false
  end
end
