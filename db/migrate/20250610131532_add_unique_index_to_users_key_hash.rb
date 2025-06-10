class AddUniqueIndexToUsersKeyHash < ActiveRecord::Migration[8.0]
  def change
        add_index :users, :key_hash, unique: true
  end
end
