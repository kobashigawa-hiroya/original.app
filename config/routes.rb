Rails.application.routes.draw do
  resources :texts
  devise_for :apps
  get "homes/index"
  root "posts#new"
  resources :posts
  resources :welcomtimes, only: [:create, :destroy]
end
