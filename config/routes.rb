Rails.application.routes.draw do
  devise_for :apps
  get "homes/index"
  root "homes#index"
end
