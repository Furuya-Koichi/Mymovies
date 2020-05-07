Rails.application.routes.draw do
  root to: 'mains#index'
  resources :movies, only: :index
end
