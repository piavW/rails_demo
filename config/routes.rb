Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: :omniauth_callbacks
  }
  root controller: :landing, action: :index 
  resources :articles
  resources :users
end