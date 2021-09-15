Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # generate first routes with resources :users
  # resources :users

  # manually writing out each route
  get '/users', to: 'users#index', as: 'user'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create', as: 'create_user'
  get '/users/:id', to: 'users#show', as: 'show_user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch 'users/:id', to: 'users#update', as: 'update_user'
  delete 'users/:id', to: 'users#destroy', as: 'delete_user'

end
