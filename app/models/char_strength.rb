class CharStrength < ActiveRecord::Base
  attr_accessible :content, :category_id

  belongs_to :category
  has_many :ratings

  validates :content, presence: true, length: { maximum: 200 }
end
