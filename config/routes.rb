Rails.application.routes.draw do
  devise_for :patients
  get 'questions/index'
  root to: "questions#index"
  resources :questions, only: [:index]
end
