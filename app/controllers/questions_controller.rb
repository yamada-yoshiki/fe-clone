class QuestionsController < ActionController::Base
  def index
    @time_now = Time.now
  end
end
