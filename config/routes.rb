Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :expenses
  resources :groups

  root 'pages#welcome'

  get '/settings', to: 'pages#settings'
end
