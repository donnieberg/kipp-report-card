class RatingsController < ApplicationController

  def index
    @self_ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    params[:rating].each do |id, attrs|
      @rating = Rating.new(attrs)
      @rating.char_strength_id = id
      @rating.rater_type = current_user.type
      @rating.rater_id = current_user.id
      #@rating.student_id = student_id
      binding.pry
      #@rating.save
    end

    @rating = Rating.new(params[:rating])
    if @rating.save
      flash.now[:success] = "Successfully submitted Report Card!"
      redirect_to root_url
    else
      flash.now[:error] = "Error in submitting Report Card"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
