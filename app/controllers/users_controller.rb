class UsersController < ApplicationController
  respond_to :json
  respond_to :html

  before_filter :signed_in_user, only: [:index, :show, :edit, :update]
  # before_filter :correct_user,   only: [:show, :edit, :update]
  before_filter :admin_user,     only: :destroy
  before_filter :non_student_user, only: :index

  def index #admin/teacher view only
    @user = current_user
    @all_students = Student.where(school_id: current_user.school_id).order("last_name ASC")
    @grade_level_students = @all_students.select {|student| student.grade_level == current_user.grade_level }
    @users = User.where(school_id: current_user.school_id)
  end

  def get_users_by_admin
    # all users at the admin's school
    @users = User.where(school_id: current_user.school_id)
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def get_students_by_school
    # all students at the teacher's school and in th teacher's grade level
    @all_students = Student.where(school_id: current_user.school_id).order("last_name ASC")
    @grade_level_students = @all_students.select {|student| student.grade_level == current_user.grade_level }
    respond_to do |format|
      format.html
      format.json { render json: @grade_level_students }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Character Labs, " + @user.first_name + "!"
      redirect_to @user
    else
      flash[:danger] = "Error, please try creating a profile again."
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @updated_user = @user.update_attributes(params[:user])
    if @updated_user
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      flash[:danger] = "Error in updating profile"
      render :new
    end
  end

  #FROM ANGULAR COOKBOOK HOMEWORK--SAVE
  # def update
  #   @user = User.find(params[:id])
  #   respond_with @user.update_attribute(:admin, params[:admin])
  # end

  # def destroy
  #   respond_with User.destroy(params[:id])
  # end

  private
    # Before filters

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def non_student_user
      if current_user.type == 'Student'
        redirect_to(root_url)
        flash[:danger] = 'Only Teachers/Admins can see the Users Index page'
      end
    end

end



