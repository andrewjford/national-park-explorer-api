Rails.application.routes.draw do
  resources :parks

  get '/centers', to: 'temp#index'
  get '/load', to: 'temp#build'
end
