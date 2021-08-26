class Campaign < ApplicationRecord
  validates :name, :company, presence: true

  belongs_to :user
  has_many :conversions

  def total_conversions
    self.conversions.count()
  end

  def created_at
    attributes["created_at"].strftime("%-m/%-d/%-y%l:%m%P")
  end
end
