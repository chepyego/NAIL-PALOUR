class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.references :manicurist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
