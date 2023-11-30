class Admins::QuestionContentsController < Admins::ApplicationController
  def new
    @question_content = QuestionContent.new(question_id: params[:question_id])
  end

  def edit
    @question_content = QuestionContent.find(params[:id])
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
end
