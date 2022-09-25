Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:new, :create]
  end

  resources :likes, only: [:create]
  delete '/likes', to: 'likes#destroy'


  devise_for :users
  resources :users, only: [:edit, :update, :show]
  get '/home', to: 'static_pages#home'
  get '/settings', to: 'static_pages#settings'

  root 'static_pages#home'
end
