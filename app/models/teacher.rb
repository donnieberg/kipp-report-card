class Teacher < User

  has_many :students, through: :ratings

end