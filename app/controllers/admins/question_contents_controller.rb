class Admins::QuestionContentsController < Admins::ApplicationController
  def new
    @question_content = QuestionContent.new(question_id: params[:question_id])
  end

  private
  def new_params
    params.permit(:question_id)
  end
end
