Rails.application.routes.draw do
  # game logic
  get "games/index"
  post "games/guess", to: "games#guess"

  # articles
  root "articles#index"

  # api namespace
  namespace :api do
    get "hello", to: "api#hello"
    resources :articles, only: [ :index, :show ]
  end

  resources :articles
end
