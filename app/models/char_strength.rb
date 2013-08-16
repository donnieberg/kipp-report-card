class CharStrength < ActiveRecord::Base
  attr_accessible :content, :category_id

  belongs_to :category
  has_many :ratings
end
