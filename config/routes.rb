Rails.application.routes.draw do
  root "pages#home"

  get "technical", to: "pages#technical"
  get "dashboard/index"

  resources :features
  resources :stories, only: [:index, :show]
  resources :tasks, only: [:update]
end
