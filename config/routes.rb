Rails.application.routes.draw do
  devise_for :users
  root to: 'mains#index'
  resources :movies, only:[:index, :new, :create]
  resources :users, only: [:edit, :update]
end
