Rails.application.routes.draw do
  devise_for :nurses, controllers: {
    sessions: 'nurses/sessions',
    passwords: 'nurses/passwords',
    registrations: 'nurses/registrations'
  }
  devise_for :patients
  get 'questions/index'
  root to: "questions#index"
  resources :questions, only: [:index]
end
