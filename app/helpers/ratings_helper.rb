module RatingsHelper
  def completed_report_card?(student)
    current_user.ratings.where(student_id: student.id).length >= CharStrength.all.length
  end


##For raw data for individual student
  # def raw_data(char_strength, student)
  #   student_char_ratings = student.self_ratings.where(char_strength_id: char_strength.id )
  # end

  # def raw_data_quarter(char_strength, student)
  #   student_char_ratings = raw_data(char_strength, student).select {|rating| rating.academic_quarter == @current_quarter}
  # end



#for individual student
  def category_average_student(category, rater_type=nil, quarter=nil)
    if quarter.nil?
      all_student_ratings = category.ratings.where(student_id:@student.id)
    else
      all_student_ratings = category.ratings.where(student_id:@student.id).where(academic_quarter: quarter)
    end

    if rater_type.nil?
      ratings_array = all_student_ratings
    elsif rater_type == "Teacher"
      ratings_array = all_student_ratings.where(rater_type:"Teacher")
    else
      ratings_array = all_student_ratings.where(rater_type:"Student")
    end
    return calc_average(ratings_array)
  end

  def cumulative_average(student, quarter=nil)
    if quarter.nil?
      student_ratings = student.self_ratings.map {|rating| rating.number.to_f }
    else
      student_ratings = student.self_ratings.where(academic_quarter: quarter).map {|rating| rating.number.to_f }
    end
      (student_ratings.reduce(:+)/student_ratings.length).round(1)
  end

  def all_graders(student)
    raters = student.self_ratings.map {|rating| rating.rater }
    raters.uniq!
  end

  #For student's raw data
  def raw_ratings_for_student(char_strength, quarter=nil)
    if quarter.nil?
      char_strength.ratings.where(student_id: @student.id)
    else
      char_strength.ratings.where(academic_quarter: quarter).where(student_id: @student.id)
    end
  end


  def data  #this parses the json request. then it goes to the ajax file
    @student = Student.find(params[:id])
    data = Category.all.map do |category|
      {
        category: category.content,
        student: category_average_student(category, "Student", 1),
        teachers: category_average_student(category, "Teacher", 1)
      }
    end
    render :json  => data
  end

#for all teacher's students
  def category_average_teachersstudents(category, rater_type=nil, quarter=nil)
    if quarter.nil?
      ratings_array = category.ratings
    else
      ratings_array = category.ratings.where(academic_quarter: quarter)
    end
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
        student: category_average_teachersstudents(category, "Student", 1),
        teachers: category_average_teachersstudents(category, "Teacher", 1)
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