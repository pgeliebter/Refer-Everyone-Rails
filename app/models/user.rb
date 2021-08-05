class User < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, :email, :phone, presence: true, uniqueness: true

  has_many :campaigns
end
