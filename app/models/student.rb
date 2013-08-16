class Student < User

  has_many :teachers, through: :ratings, source: :rater, conditions: "type = 'Teacher'"
  has_many :ratings

end