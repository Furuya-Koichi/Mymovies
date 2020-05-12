Rails.application.routes.draw do
  devise_for :users
  root to: 'mains#index'
  resources :movies, only:[:index, :new, :create, :destroy, :edit, :update, :show]
  resources :users, only: [:edit, :update, :show]
end
