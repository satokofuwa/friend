Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
  end
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    collection do
      post :confirm
  resources :favorites, only: [:create, :destroy]
    end
  end
end
