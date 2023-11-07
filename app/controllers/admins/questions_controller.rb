class Admins::QuestionsController < Admins::ApplicationController
  def index
    @questions = Question.all.order(:id)
  end

  def new
  end

  def show
    @question = Question.find(params[:id])
    @question_contents = @question.question_contents
    @question_options = @question.question_options
  end
end
