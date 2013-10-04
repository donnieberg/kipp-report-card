class Admin < User

  belongs_to :school

  def self.model_name
    User.model_name
  end
end