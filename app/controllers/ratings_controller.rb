class RatingsController < ApplicationController

  def index
    @self_ratings = Rating.all
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
    if @saved_ratings_array.all?
      flash[:success] = "Successfully submitted Report Card!"
      redirect_to users_path
    else
      flash[:danger] = "Error in submitting Report Card"
      redirect_to users_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
