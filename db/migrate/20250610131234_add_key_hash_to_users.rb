class AddKeyHashToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :key_hash, :string, limit: 64
  end
end
