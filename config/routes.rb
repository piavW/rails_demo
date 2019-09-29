Rails.application.routes.draw do
  devise_for :users
  #, controller: :articles, action: :index
  # get 'articles/index'
  # root controller: :articles, action: :index
  get 'landing/index'
  root controller: :landing, action: :index 
  resources :articles
  resources :users
end