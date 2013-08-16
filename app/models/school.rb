class School < ActiveRecord::Base
  attr_accessible :name, :city, :state, :level :region_id

  belongs_to :region
  has_many :users
  has_many :ratings, through: :users

end
