class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @student = Student.find(params[:user_id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      render :index
    else
      render :new
      flash[:danger] = "Error in creating category"
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def report_card
    @categories = Category.all
  end
end
