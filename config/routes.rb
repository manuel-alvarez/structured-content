Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  resources :posts
  
  root 'welcome#index'
end
