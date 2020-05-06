Rails.application.routes.draw do
  resources :moves, only: :index
end
