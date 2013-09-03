class Teacher < User
  has_many :courses
  has_many :students, through: :courses
  has_many :students, through: :ratings

  def self.model_name
    User.model_name
  end
end