class Rating < ActiveRecord::Base
  attr_accessible :number, :rater_id, :rater_type, :student_id, :char_strength_id

  belongs_to :student
  belongs_to :rater, class_name: "User"
  belongs_to :char_strength

  validates :number, presence: true

  def overall_averages

  end

end
