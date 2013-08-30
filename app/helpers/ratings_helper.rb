module RatingsHelper
  def completed_report_card?(student)
    ####FIX LOGIC - current user's ratings for the particular student == CharStrength.all.length
    student.self_ratings.length >= CharStrength.all.length
  end

  def category_average(category, rater_type=nil)
    if rater_type.nil?
      ratings_array = category.ratings.where(student_id:@student.id)
    elsif rater_type == "Teacher"
      ratings_array = category.ratings.where(student_id:@student.id).where(rater_type:"Teacher")
    else
      ratings_array = category.ratings.where(student_id:@student.id).where(rater_type:"Student")
    end
    unless ratings_array.empty?
      ratings = ratings_array.map { |rating| rating.number }
      ratings.reduce(:+)/ratings.length
    else
      return []
    end
  end
end