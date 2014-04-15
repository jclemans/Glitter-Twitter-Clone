Glitter::Application.routes.draw do
  root to: 'gleets#index'
  resources :users
  resources :sessions, only: [:create, :new, :destroy]

end
