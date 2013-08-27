class RatingsController < ApplicationController

  def index
    @students = Student.where(grade_level: @current_user.grade_level)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
