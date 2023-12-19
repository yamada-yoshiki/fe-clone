class Admins::QuestionOptionsController < Admins::ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @question_option = @question.question_options.new
  end

  def create
    @question = Question.find(create_params[:question_id])
    @question_option = @question.question_options.new(create_params)
    @question_option.save!
  end

  def destroy
    @question_option = QuestionOption.find(params[:id])
    @question_option.destroy
  end

  private
  def new_params
    params.permit(:question_id)
  end

  def create_params
    params.require(:question_option).permit(:question_id, :sentence, :display_order)
  end
end
