Rails.application.routes.draw do
  root 'questions#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }

  namespace :admins do
    resources :questions
    resources :question_contents
  end
end
