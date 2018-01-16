Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  get 'home', to: "bussinesses#index"
end
