Rails.application.routes.draw do
  require 'sidekiq/web'
  
  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  resources :uploads, only: [:new, :create]
  devise_for :users
  resources :blog_posts do
    resources :comments, only: [:create]
  end
  root "blog_posts#index"
end