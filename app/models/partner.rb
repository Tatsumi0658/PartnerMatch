class Partner < ApplicationRecord
  validates :name, presence: true, length:{ maximum: 30 }
  validates :email, presence: true
  has_secure_password
end
