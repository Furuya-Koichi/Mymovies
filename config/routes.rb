Rails.application.routes.draw do
  get 'bookmarks/create'

  get 'bookmarks/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'mains#index'

    resources :movies do
      resource :bookmarks, only: %i[create destroy]
      get :bookmarks, on: :collection

      collection do
        get 'search'
      end
      
      namespace :admin do
        resources :movies, only: [:index, :new, :create, :show,  :edit, :destroy]
      end
    end
  #検索ペーじ
  get '/movies_search', to: 'search#index', as:'movies_search'
  resources :users, only: [:edit, :update, :show]
end
