Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :statements
  resources :users, only: [:show]
  end
