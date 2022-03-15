Rails.application.routes.draw do
  root "sessions#new"
  post 'feeds/:id' => 'feeds#update'
  resources :feeds do
    collection do
      post :confirm
    end
  end
  #resources :feeds do
   # member do
    #  patch :confirm
    #end
  #end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  end
