class Student < User

  has_many :teachers, through: :ratings, source: :rater, conditions: "type = 'Teacher'"
  has_many :self_ratings, class_name:"Student", foreign_key:"student_id"

end