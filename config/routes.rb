Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  root controller: :landing, action: :index 
  resources :articles
end