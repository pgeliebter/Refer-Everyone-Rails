class Conversion < ApplicationRecord
  belongs_to :campaign
  has_many :referrals, class_name: "Conversion", foreign_key: "referred_by"
  belongs_to :referred_by, class_name: "Conversion", foreign_key: "referred_by", optional: true
end
