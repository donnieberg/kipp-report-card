class Course < ActiveRecord::Base
  attr_accessible :title, :teacher_id

  belongs_to :teacher
  has_many :students
  has_many :ratings, through: :students
end
