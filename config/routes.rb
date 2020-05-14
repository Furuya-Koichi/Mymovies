Rails.application.routes.draw do
  devise_for :users
  root to: 'mains#index'
  resources :movies
  resources :users, only: [:edit, :update, :show]
end
