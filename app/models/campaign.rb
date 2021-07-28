class Campaign < ApplicationRecord
  validates :name, :company, presence: true
  belongs_to :user
  has_many :conversions
end
