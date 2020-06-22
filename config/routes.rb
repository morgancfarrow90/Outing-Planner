Rails.application.routes.draw do

  root to: 'application#home'



  resources :sites
  resources :specials
  resources :neighborhoods
  resources :days
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
