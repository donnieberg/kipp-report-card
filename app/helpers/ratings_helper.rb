module RatingsHelper
  def completed_report_card?(student)
    current_user.ratings.where(student_id: student.id).length >= CharStrength.all.length
  end

#for individual student
  def category_average_student(category, rater_type=nil)
    all_student_ratings = category.ratings.where(student_id:@student.id)
    if rater_type.nil?
      ratings_array = all_student_ratings
    elsif rater_type == "Teacher"
      ratings_array = all_student_ratings.where(rater_type:"Teacher")
    else
      ratings_array = all_student_ratings.where(rater_type:"Student")
    end
    return calc_average(ratings_array)
  end

#for all teacher's students
  def category_average_teachersstudents(category, rater_type=nil)
    ratings_array = category.ratings
    ratings_array.select! do |rating|
      rating if (rating.student.grade_level == current_user.grade_level) && (rating.student.school_id == current_user.school_id)
    end
    return calc_average(ratings_array)
  end

  def calc_average(ratings_array)
    unless ratings_array.empty?
      ratings = ratings_array.map { |rating| rating.number.to_f }
      average = ratings.reduce(:+)/ratings.length
      average.round(2)
    else
      return []
    end
  end
end