class ReportCard < ActiveRecord::Base
  attr_accessible :quarter, :year, :student

  belongs_to :student
  has_many :ratings

  def self_ratings(student)
    self.ratings.where(author: student.id)
  end

  def teacher_ratings(student)
    self.ratings.select do |rating|
      rating.author.to_i != student.id
    end
  end


end