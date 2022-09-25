Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:new, :create]
  end

  resources :likes, only: [:create]
  delete '/likes', to: 'likes#destroy'


  devise_for :users
  get '/home', to: 'static_pages#home'

  root 'static_pages#home'
end
