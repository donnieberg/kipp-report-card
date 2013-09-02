module RatingsHelper
  def completed_report_card?(student)
    current_user.ratings.where(student_id: student.id).length >= CharStrength.all.length
  end

#for individual student
  def category_average_student(category, rater_type=nil, quarter=nil)
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

  def cumulative_average(student)
    student_ratings = student.self_ratings.map {|rating| rating.number.to_f }
    (student_ratings.reduce(:+)/student_ratings.length).round(1)
  end

  def all_graders(student)
    raters = student.self_ratings.map {|rating| rating.rater }
    raters.uniq!
  end

  def data  #this parses the json request. then it goes to the ajax file
    @student = Student.find(params[:id])
    data = Category.all.map do |category|
      {
        category: category.content,
        student: category_average_student(category, "Student"),
        teachers: category_average_student(category, "Teacher")
      }
    end
    render :json  => data
  end

#for all teacher's students
  def category_average_teachersstudents(category, rater_type=nil, quarter=nil)
    ratings_array = category.ratings
    ratings_array.select! do |rating|
      rating if (rating.student.grade_level == current_user.grade_level) && (rating.student.school_id == current_user.school_id)
    end
    if rater_type.nil?
      ratings_array
    elsif rater_type == "Teacher"
      ratings_array = ratings_array.where(rater_type:"Teacher")
    else
      ratings_array = ratings_array.where(rater_type:"Student")
    end
    return calc_average(ratings_array)
  end


  def data_dashboard  #this parses the json request. then it goes to the ajax file
    data = Category.all.map do |category|
      {
        category: category.content,
        student: category_average_teachersstudents(category, "Student"),
        teachers: category_average_teachersstudents(category, "Teacher")
      }
    end
    render :json  => data
  end


  def calc_average(ratings_array)
    unless ratings_array.empty?
      ratings = ratings_array.map { |rating| rating.number.to_f }
      average = ratings.reduce(:+)/ratings.length
      average.round(1)
    else
      return []
    end
  end

end