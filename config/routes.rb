Rails.application.routes.draw do
  resources :parks

  get '/centers', to: 'temp#index'
  get '/nps/parks/:id', to: 'npsparks#show'
end
