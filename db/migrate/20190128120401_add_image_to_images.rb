class AddImageToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :image, :text, null: false
  end
end
