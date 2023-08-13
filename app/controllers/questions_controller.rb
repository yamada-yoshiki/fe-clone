class QuestionsController < ApplicationController
  def index
    @time_now = Time.zone.now
  end
end
