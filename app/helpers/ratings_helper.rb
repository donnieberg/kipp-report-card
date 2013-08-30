module RatingsHelper
  def completed_report_card?(student)
    current_user.ratings.where(student_id: student.id).length >= CharStrength.all.length
  end

  def category_average_student(category, rater_type=nil)
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

  def category_average_teachersstudents(category, rater_type=nil)
    ratings_array = category.ratings
    ratings_array.select! do |rating|
      binding.pry
      rating if rating.student.grade_level == current_user.grade_level
    end
    unless ratings_array.empty?
      ratings = ratings_array.map { |rating| rating.number }
      ratings.reduce(:+)/ratings.length
    else
      return []
    end
  end
end