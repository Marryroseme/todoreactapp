Rails.application.routes.draw do
 
  resources :cryptos
  devise_for :users
  get 'home/about'
  get 'home/search'
  post "/home/search" => 'home/search'
  root 'home#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Ex