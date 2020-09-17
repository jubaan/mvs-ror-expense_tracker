Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'sign_in', sign_up: 'sign_up', sign_out: 'sign_out' }
  # devise_for :users

  resources :users, only: %i[show edit update destroy]
  resources :expenses
  resources :groups

  root 'pages#welcome'

  get '/settings', to: 'pages#settings'
  get '/dashboard', to: 'pages#dashboard'
end
