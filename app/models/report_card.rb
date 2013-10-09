class ReportCard < ActiveRecord::Base
  attr_accessible :quarter, :year, :student

  belongs_to :student
  has_many :ratings

  def self_ratings
    self.ratings.where(author: self.student.id)
  end

  def teacher_ratings
    self.ratings.select do |rating|
      rating.author.to_i != self.student.id
    end
  end

  def self.year_quarter_conversion(year, quarter)
    # Implements this mapping and adds the year;
    # 1 => 0.5
    # 2 => 0.75
    # 3 => 0
    # 4 => 0.25
    year + ((quarter + 1)% 4)/4.0
  end


end