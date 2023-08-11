class Admins::ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  layout 'admins/application'

  private
  def after_sign_in_path_for(resource)
    admins_questions_path(resource)
  end
end
