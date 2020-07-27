Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :texts
  devise_for :apps
  # get "homes/index"
  root "posts#index"
  resources :menus
  resources :posts
  resources :welcomtimes, only: [:create, :destroy]
  resources :contacts, only: [:index, :create]
  resources :letters
end
