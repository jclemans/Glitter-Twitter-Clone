Glitter::Application.routes.draw do
  root to: 'gleets#index'
  resources :users
  resources :gleets
  resources :followed_users, only: [:index, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
