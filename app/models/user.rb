class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :bookings, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  # roles enum maps to a string column in the database
  # enum role: { admin: "admin", user: "user" }
  ROLES = %w[admin user]

  def admin?
    role == "admin"
  end
  def user?
    role == "user"
  end
  def set_default_role
    self.role ||= "user"
  end
end
