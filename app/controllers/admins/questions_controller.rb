class Admins::QuestionsController < Admins::ApplicationController
  def index
    @questions = Question.all.order(:id)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(create_params)
    @question_contents = []
    @question.save!
  end

  def edit
    @question = Question.find(params[:id])
    @question_contents = @question.question_contents
  end

  def show
    @question = Question.find(params[:id])
    @question_contents = @question.question_contents
    @question_options = @question.question_options
  end

  def create_params
    params.require(:question).permit(:title)
  end
end
