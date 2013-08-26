class Teacher < User

  has_many :students, through: :courses
  #has_many :students, through: :ratings

end