Rails.application.routes.draw do
  resources :users
  resources :rooms
resources :rooms do
  member do
    post 'open_door'
  end
end
  root to: 'rooms#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  
end
