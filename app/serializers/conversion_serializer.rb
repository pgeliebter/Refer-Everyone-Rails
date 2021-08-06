class ConversionSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :created_at, :total_referrals, :referrals, :referred_by
  belongs_to :campaign
  belongs_to :referred_by
  has_many :referrals
end
