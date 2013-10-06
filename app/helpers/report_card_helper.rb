module ReportCardHelper

  def self_ratings
    self.ratings.where(author: self.id)
  end

  def teacher_ratings
    self.ratings.select do |rating|
      rating.author != self.id
    end
  end

end

