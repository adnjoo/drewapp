Rails.application.routes.draw do
  devise_for :users

  get "games/index"
  post "games/guess", to: "games#guess"

  root "articles#index"
  resources :articles

  resources :posts, only: [ :index, :show ]

  resources :chats, only: %i[create show] do
    resources :messages, only: %i[create]
  end

  namespace :api do
    get "hello", to: "api#hello"
    resources :articles, only: [ :index, :show ]
  end
end
