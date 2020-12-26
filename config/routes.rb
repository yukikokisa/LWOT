Rails.application.routes.draw do
  get 'questions/index'
  root to: "questions#index"
end
