Rails.application.routes.draw do
  root 'questions#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
  }

  namespace :admins do
    resources :questions
    resources :question_contents
    resources :question_options
    post '/question/publish', to: 'questions#publish'
    post '/question/unpublish', to: 'questions#unpublish'
  end
end
