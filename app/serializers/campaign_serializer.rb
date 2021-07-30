class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :company, :created_at, :total_conversions
  belongs_to :user
  has_many :conversions
end
