Glitter::Application.routes.draw do
  root to: 'gleets#index'
  resources :users
  resources :gleets
  resources :sessions, only: [:create, :new, :destroy]
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
