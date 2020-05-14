Rails.application.routes.draw do
  devise_for :users

  root to: 'mains#index'

    resources :movies do
      collection do
        get 'search'
      end
    end
  #検索ペーじ
  get '/movies_search', to: 'search#index', as:'movies_search'
  resources :users, only: [:edit, :update, :show]
end
