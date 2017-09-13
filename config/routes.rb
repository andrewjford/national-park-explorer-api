Rails.application.routes.draw do
  resources :parks, only: [:index, :show, :update]

  get '/centers', to: 'visitorcenters#index'
  get '/nps/parks/:id', to: 'npsparks#show'
  get '/sites', to: 'sites#index'
end
