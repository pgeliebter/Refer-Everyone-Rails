class Conversion < ApplicationRecord
  belongs_to :campaign
  has_many :referrals, class_name: "Conversion", foreign_key: "referred_by"
  belongs_to :referred_by, class_name: "Conversion", foreign_key: "referred_by", optional: true

  def total_referrals
    self.referrals.count()
  end

  def total_incentive
    self.campaign.incentive * self.total_referrals
  end

  def created_at
    attributes["created_at"].strftime("%-m/%-d/%-y%l:%m%P")
  end
end
