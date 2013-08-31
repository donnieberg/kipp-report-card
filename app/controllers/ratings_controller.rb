class RatingsController < ApplicationController

  def index #individual student's ratings
    @student = Student.find(params[:user_id])
    @categories = Category.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @saved_ratings_array = params[:rating].map do |id, attrs|
      @rating = Rating.new(attrs)
      @rating.char_strength_id = id
      @rating.rater_type = current_user.type
      @rating.rater_id = current_user.id
      @rating.student_id = params[:user_id]
      @rating.save
    end
    #if all our ratings saved is true..
    if @saved_ratings_array.all? && @saved_ratings_array.length == CharStrength.all.length
      flash[:success] = "Successfully submitted Report Card!"
      redirect_to user_ratings_path
    else
      flash[:danger] = "Error in submitting Report Card"
      redirect_to user_categories_path(params[:user_id])
    end
  end


  def teacher_dash #all student's ratings
    @categories = Category.all
  end
end
