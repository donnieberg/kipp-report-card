class Student < User
  attr_accessible :school, :grade_level, :id_number

  belongs_to :school
  has_and_belongs_to_many :teachers
  has_many :report_cards

end