class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(params[:rating])
    if @rating.save
      flash[:success] = "Assessment successfully created"
      render :show
    else
      flash[:danger] = "Error in creating assessment. Please submit again."
      render :new
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update_attributes(params[:rating])
    if @rating
      flash[:success] = "Assessment successfully updated."
      render :show
    else
      flash[:danger] = "Error, please try editing assessment again."
      render :edit
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.delete
    redirect_to ratings_path
  end

end
