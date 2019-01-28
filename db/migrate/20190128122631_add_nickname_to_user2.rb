class AddNicknameToUser2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false, unique: true
  end
end
