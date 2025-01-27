class Service < ApplicationRecord
  has_one_attached :image
  has_rich_text :description

  has_many :clients, through: :bookings
  has_many :manicurist, through: :bookings

  # has_many :bookings, :inverse_of: :services accepts_nested_attributes_for
  # :bookings
  has_many :bookings, inverse_of: :service, dependent: :destroy
  accepts_nested_attributes_for :bookings
end
