Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  get 'home', to: "businesses#index"
  post 'home', to: "businesses#create"
end
