class Admins::QuestionContentsController < Admins::ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @question_content = @question.question_contents.new
    @modal_type = params[:type]
  end

  def edit
    @question_content = QuestionContent.find(params[:id])
  end

  def create
    @question = Question.find(create_params[:question_id])
    @question_content = @question.question_contents.new(create_params)
    @question_content.save!
  end

  def update
    @question_content = QuestionContent.find(params[:id])
    @question_content.update!(update_params)
    @question = @question_content.question
  end

  def destroy
    @question_content = QuestionContent.find(params[:id])
    @question_content.destroy
  end

  private
  def new_params
    params.permit(:question_id)
  end

  def update_params
    params.require(:question_content).permit(:sentence, :display_order, :image_path)
  end

  def create_params
    params.require(:question_content).permit(:question_id, :sentence, :display_order, :image_path)
  end
end
