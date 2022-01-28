Rails.application.routes.draw do
 
  resources :cryptos
  devise_for :users
  get 'home/about'
  get 'home/search'
  post "/home/search" => 'home/search'
  root 'home#index'

  # The priority is based upon order of creation: first created -> highest prio