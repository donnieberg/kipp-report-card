class Student < User

  belongs_to :school
  has_and_belongs_to_many :teachers
  has_many :report_cards

  def self.model_name
    User.model_name
  end

  def ratings(year=nil, quarter=nil)
    student_report_cards = self.report_cards

    if quarter
      student_report_cards.select! do |card|
        card.year == year && card.quarter == quarter
      end
    elsif year
      student_report_cards.select! do |card|
        card.year == year
      end
    end

    student_ratings = []
    student_report_cards.each do |card|
      student_ratings += card.ratings
    end

    return student_ratings
  end

end