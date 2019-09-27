Rails.application.routes.draw do
  get 'landing/index'
  # root controller: :landing, action: :index 
  root controller: :articles, action: :index
  resources :articles
end