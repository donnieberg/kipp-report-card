class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def ratings_test
    @averages = Rating.all.get_average
  end
end