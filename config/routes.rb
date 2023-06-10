Rails.application.routes.draw do
  resources :users
  resources :rooms
  root to: 'rooms#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
