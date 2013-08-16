class Rating < ActiveRecord::Base
  attr_accessible :number, :rater_id, :student_id

  belongs_to :student
  belongs_to :rater, class_name: "User"

end
