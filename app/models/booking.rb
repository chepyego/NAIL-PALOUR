class Booking < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :service

  # validates_presence_of :name, presence: true
  # validates_presence_of :email, presence: true
  # validates_presence_of :phone_number, presence: true
  validates :name, :phone_number, :email, presence: true, unless: -> { user.present? }
end
