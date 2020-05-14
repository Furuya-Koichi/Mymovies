Rails.application.routes.draw do
  devise_for :users

  root to: 'mains#index'

  resources :movies do
    collection do
      get 'search'
    end
  end
  #検索ペーじ
  # get '/movie/movie_search', to: 'deliver_addresses#new'
  resources :users, only: [:edit, :update, :show]
end
