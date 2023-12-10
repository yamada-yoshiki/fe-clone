class Admins::QuestionContentsController < Admins::ApplicationController
  def new
    question = Question.find(params[:question_id])
    @question_content = question.question_contents.new
  end

  def edit
    @question_content = QuestionContent.find(params[:id])
  end

  def create
    @question_content = QuestionContent.new(update_params)
    @question_content.create!
  end

  def update
    # TODO:form_withでcreate,updateに振り分けてもらうようにして
    if params[:id]
      @question_content = QuestionContent.find(params[:id])
      @question_content.update!(update_params)
    else
      @question_content = QuestionContent.new(update_params)
      @question_content.save
    end
  end

  private
  def new_params
    params.permit(:question_id)
  end

  def update_params
    params.require(:question_content).permit(:sentence, :display_order)
  end

  def create_params
    params.require(:question_content).permit(:sentence, :display_order)
  end
end
