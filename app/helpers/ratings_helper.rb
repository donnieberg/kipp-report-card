module RatingsHelper
  def completed_report_card?(student)
    student.self_ratings.length == 24
  end

  def category_average(category, rater_type=nil)
    if rater_type.nil?
      ratings_array = category.ratings.where(student_id:@student.id)
    elsif rater_type == "Teacher"
      ratings_array = category.ratings.where(student_id:@student.id).where(rater_type:"Teacher")
    else
      ratings_array = category.ratings.where(student_id:@student.id).where(rater_type:"Student")
    end
    numbers = ratings_array.map do |rating|
      rating.number
    end
    numbers.reduce(:+)/numbers.length
  end
end
