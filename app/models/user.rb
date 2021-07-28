class User < ApplicationRecord
  has_secure_password
  validates :email, :phone, presence: true, uniqueness: true

  has_many :campaigns
end
