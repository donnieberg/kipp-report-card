class Region < ActiveRecord::Base
  attr_accessible :name, :state

  has_many :schools
  has_many :ratings, through: :schools
end
