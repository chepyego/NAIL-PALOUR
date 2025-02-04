class AddDetailsToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :name, :string
    add_column :bookings, :email, :string
    add_column :bookings, :phone_number, :string
  end
end
