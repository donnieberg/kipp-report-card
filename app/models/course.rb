class Course < ActiveRecord::Base
  attr_accessible :title, :teacher_id

  belongs_to :teacher
  has_many :student_courses
  has_many :students, through: :student_courses

  has_many :ratings, through: :students

  validates :title, presence: true, length: { maximum: 80 }
end
