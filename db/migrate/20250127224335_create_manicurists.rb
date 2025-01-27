class CreateManicurists < ActiveRecord::Migration[8.0]
  def change
    create_table :manicurists do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :experience
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
