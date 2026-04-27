Rails.application.routes.draw do
  root "pages#home"

  get "technical", to: "pages#technical"
  get "dashboard/index"

  resources :features, only: [:index, :show]
  resources :stories, only: [:index, :show]
end
