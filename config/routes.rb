Rails.application.routes.draw do
  root "questions#index"

  devise_for :admins

  namespace :admins do
    resources :questions
  end
end
