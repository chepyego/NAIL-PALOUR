class RemoveKeyHashFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :key_hash, :string
  end
end
