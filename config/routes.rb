Rails.application.routes.draw do
  root to:'rooms#show'
  resources :users
  mount ActionCable.server => '/cable'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
