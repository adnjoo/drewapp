Rails.application.routes.draw do
  # Devise authentication
  devise_for :users

  # Game logic routes
  get "games/index"
  post "games/guess", to: "games#guess"

  # Articles
  root "articles#index"
  resources :articles

  # Posts
  resources :posts, only: [ :index, :show ]

  # Chats
  post "chats/create", to: "chats#create"
  get "chats/home", to: "chats#new", as: :chats_home

  # API namespace
  namespace :api do
    get "hello", to: "api#hello"
    resources :articles, only: [ :index, :show ]
  end
end
