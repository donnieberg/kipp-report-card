class School < ActiveRecord::Base
  attr_accessible :name, :city, :state, :grade_level

  has_many :students
  has_many :teachers


  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 2 }
  validates :grade_level, presence: true, length: { maximum: 20 }

end
