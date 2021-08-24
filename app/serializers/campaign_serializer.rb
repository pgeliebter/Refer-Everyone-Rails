class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :company, :created_at, :incentive, :total_conversions, :image

  belongs_to :user
  has_many :conversions, serializer: ConversionSerializer
end
