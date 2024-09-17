Rails.application.routes.draw do
  get "games/index"
  root "articles#index"

  resources :articles
end
