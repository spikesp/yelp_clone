Rails.application.routes.draw do
  root to: "businesses#index"
  get 'ui(/:action)', controller: 'ui'

  get 'home', to: "businesses#index"
  post 'home', to: "businesses#create"

  resources :businesses, only: [:show] do
    resources :reviews, only: [:create]
  end

  
  resources :sessions, only: [:create]

  get 'sign_up', to: "users#new"
  post 'sign_up', to: "users#create"
  get 'sign_in', to: 'sessions#new'
  resources :sessions, only: [:create]

  get 'sign_out', to: 'sessions#destroy'
end
