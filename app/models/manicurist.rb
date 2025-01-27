class Manicurist < ApplicationRecord
  belongs_to :user
  has_one_attached :manicurist_image
end
