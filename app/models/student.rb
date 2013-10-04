class Student < User

  belongs_to :school
  has_and_belongs_to_many :teachers
  has_many :report_cards

  def self.model_name
    User.model_name
  end
end