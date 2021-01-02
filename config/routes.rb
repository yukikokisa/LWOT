Rails.application.routes.draw do
  devise_for :nurses, controllers: {
    sessions: 'nurses/sessions',
    passwords: 'nurses/passwords',
    registrations: 'nurses/registrations'
  }

  devise_for :patients, controllers: {
  sessions: 'patients/sessions',
  passwords: 'patients/passwords',
  registrations: 'patients/registrations'
  }
  
  get 'questions/index'
  root to: "questions#index"
  resources :questions, only: [:index, :new, :create]
  resources :checkups, only: [:new, :create]
  resources :symptoms, only: [:new, :create]
  resources :medical_treatments, only: [:new, :create]
end
 