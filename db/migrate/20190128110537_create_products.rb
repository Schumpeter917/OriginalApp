class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :title, null: false, unique: true
      t.text    :recipe, null: false
      t.text    :text, null: true
      t.timestamps
    end
  end
end
