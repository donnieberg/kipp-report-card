class ReportCardsController < ApplicationController

  before_filter :find_student

  def index
    student_report_cards = @student.report_cards
    @report_card_teacher_averages = student_report_cards.map do |report_card|
      report_card.teacher_ratings(@student).get_average
    end
  end

  def new
    @report_card = ReportCard.build
  end

  def create
    @report_card = @student.report_cards.build(params[:report_card])
    if @report_card.save
      flash[:success] = 'Report Card created successfully.'
      render :show
    else
      flash[:danger] = 'Error in creating Report Card. Please try creating it again.'
      render :new
    end
  end

  def show
    @report_card = ReportCard.find(params[:id])
    @all_ratings = @report_card.ratings
    @self_ratings = @report_card.self_ratings(@student)
    @teacher_ratings = @report_card.teacher_ratings(@student)
    @teacher_averages = @teacher_ratings.get_average
  end

  def edit
    @report_card = ReportCard.find(params[:id])
  end

  def update
    @report_card = ReportCard.find(params[:id])
    @report_card.update_attributes(params[:report_card])
    if @report_card
      flash[:success] = "Report card successfully updated."
      render :show
    else
      flash[:danger] = "Error, please try editing report card again."
      render :edit
    end

  end

  def destroy
    @report_card = ReportCard.find(params[:id])
    @report_card.delete
    redirect_to report_cards_path
  end


  private
    def find_student
      @student = Student.find(params[:student_id])
    end

end
