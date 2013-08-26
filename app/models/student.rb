class Student < User
  belongs_to :course
  has_many :teachers, through: :ratings, source: :rater, conditions: "type = 'Teacher'"
  has_many :self_ratings, class_name:"Rating", foreign_key:"student_id"

end