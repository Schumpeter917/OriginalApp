class RemoveImagesFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :images, :text
  end
end
