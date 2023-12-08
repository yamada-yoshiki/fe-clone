class Admins::QuestionsController < Admins::ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc).order(:id)
  end

  def new
    @question = Question.new
    @question_form_url = admins_questions_path
  end

  def create
    @question = Question.new(create_params)
    @question_contents = []
    unless @question.save
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    @question_contents = @question.question_contents
    @question_form_url = admins_question_path(@question)
  end

  def update
    @question = Question.find(params[:id])
    @question.update!(update_params)    
  end

  def show
    @question = Question.find(params[:id])
    @question_contents = @question.question_contents
    @question_options = @question.question_options
  end

  private
  def create_params
    params.require(:question).permit(:title)
  end

  def update_params
    params.require(:question).permit(:title)
  end
end
