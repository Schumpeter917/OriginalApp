class RemoveImageFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image, :text
  end
end
