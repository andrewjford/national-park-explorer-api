Rails.application.routes.draw do
  resources :parks, [:index, :show, :update]

  get '/centers', to: 'visitorcenters#index'
  get '/nps/parks/:id', to: 'npsparks#show'
end
