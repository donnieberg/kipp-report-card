module ReportCardHelper

  def self_ratings
    self.ratings.where(author: self.id)
  end

  def teacher_ratings
    self.ratings.select do |rating|
      rating.author != self.id
    end
  end

  def get_author(id)
    author = User.find(id)
    return "#{author.first_name} #{author.last_name}"
  end

end

