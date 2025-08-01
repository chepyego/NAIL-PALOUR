class Booking < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :service

  # validates_presence_of :name, presence: true
  # validates_presence_of :email, presence: true
  # validates_presence_of :phone_number, presence: true
  # validates :name, :phone_number, :email, presence: true, unless: -> { user.present? }
  validates :name, :phone_number, :email, presence: true, if: :guest_booking?

  def guest_booking?
    User.blank?
  end

    scope :upcoming, -> { where("date > ?", Time.now) }



end
