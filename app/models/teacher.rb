class Teacher < User
  attr_accessible :school, :grade_level, :id_number

  belongs_to :school
  has_and_belongs_to_many :students

end