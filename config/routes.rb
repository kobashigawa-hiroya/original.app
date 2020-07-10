Rails.application.routes.draw do
  devise_for :apps
  get "homes/index"
  root "posts#new"
  resources :posts
  resources :welcomtimes, only: [:create, :destroy]
end
