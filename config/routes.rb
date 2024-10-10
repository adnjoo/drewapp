Rails.application.routes.draw do
  devise_for :users

  # Marketing
  root "landing_page/index"
  # Blog
  resources :articles

  # AI
  post "chats/create", to: "chats#create"
  get "chats/home", to: "chats#new", as: :chats_home

  # API
  namespace :api do
    get "hello", to: "api#hello"
    resources :articles, only: [ :index, :show ]
  end
end
