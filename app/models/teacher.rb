class Teacher < User

  belongs_to :school
  has_and_belongs_to_many :students

  def self.model_name
    User.model_name
  end
end