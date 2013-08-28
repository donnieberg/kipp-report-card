class CharStrength < ActiveRecord::Base
  attr_accessible :content, :category_id#, :ratings_attributes
  #accepts_nested_attributes_for :ratings

  belongs_to :category
  has_many :ratings

  validates :content, presence: true, length: { maximum: 200 }
end
