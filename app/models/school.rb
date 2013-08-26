class School < ActiveRecord::Base
  attr_accessible :name, :city, :state, :grade_level

  has_many :users
  has_many :ratings, through: :users

end
