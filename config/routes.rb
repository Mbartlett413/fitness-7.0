Rails.application.routes.draw do
  devise_for :users
  root "marketplace#index"
  resources :programs
  resources :users, only: [:show]
  namespace :programs do
    resources :weeks, only: [:create, :show]
    resources :days, only: [:create, :show]
  end 
end
