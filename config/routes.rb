Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    collection do
      post :confirm
  resources :favorites, only: [:create, :destroy]
  root "blogs#index"
    end
  end
end
