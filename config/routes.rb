Rails.application.routes.draw do

  resources :special_stops
  resources :site_stops
  resources :outings
  root to: 'application#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy', as: 'signout'

  resources :sites
  resources :specials
  resources :neighborhoods
  resources :days
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
