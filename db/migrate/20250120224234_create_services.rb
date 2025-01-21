class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :price

      t.timestamps
    end
  end
end
