class User < ActiveRecord::Base
  attr_accessible :name, :email, :school_id, :type

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true

  has_many :ratings, foreign_key: "rater_id"

end
