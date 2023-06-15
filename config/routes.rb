Rails.application.routes.draw do
  resources :users
  resources :rooms do
    member do
      get 'show_usages'
      post 'open_door'
      post 'clear_log'
    end
  end

  root to: 'rooms#index'
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: :logout

  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'lost_card', to: 'pages#lost_card', as: :lost_card
  get 'revoke_permit', to: 'pages#revoke_permit', as: :revoke_permit
  post 'revoke_permit', to: 'pages#revoke_permit'
end
