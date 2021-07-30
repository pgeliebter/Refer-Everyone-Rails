class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :company, :total_conversions
  belongs_to :user
  has_many :conversions
end
