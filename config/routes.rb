Rails.application.routes.draw do
  # game logic
  get "games/index"
  post "games/guess", to: "games#guess"

  # articles
  root "articles#index"

  # api
  get "api/hello", to: "api#hello"

  resources :articles
end
