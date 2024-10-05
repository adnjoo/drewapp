Rails.application.routes.draw do
  devise_for :users

  get "games/index"
  post "games/guess", to: "games#guess"

  root "articles#index"
  resources :articles

  resources :posts, only: [ :index, :show ]

  post "chats/create", to: "chats#create"
  get "chats/home", to: "chats#new", as: :chats_home

  namespace :api do
    get "hello", to: "api#hello"
    resources :articles, only: [ :index, :show ]
  end
end
