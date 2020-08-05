Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'registration', sign_out: 'logout' }
  # devise_for :users

  resources :users
  resources :expenses
  resources :groups

  root 'pages#welcome'

  get '/settings', to: 'pages#settings'
end
