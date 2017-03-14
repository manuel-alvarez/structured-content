Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  resources :posts
  resources :users
  
  root 'welcome#index'
end
