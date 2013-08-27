class Student < User
  has_many :student_courses
  has_many :courses, through: :student_courses

  has_many :teachers, through: :ratings, source: :rater, conditions: "type = 'Teacher'"
  has_many :self_ratings, class_name:"Rating", foreign_key:"student_id"

end