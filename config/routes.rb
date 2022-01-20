Rails.application.routes.draw do
 
  resources :cryptos
  devise_for :users
  get 'home/about'
  get 'home/search'
  post "/home/search" =>