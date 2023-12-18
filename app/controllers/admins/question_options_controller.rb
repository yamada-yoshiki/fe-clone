class Admins::QuestionOptionsController < Admins::ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @question_option = @question.question_options.new
  end

  private
  def new_params
    params.permit(:question_id)
  end
end
