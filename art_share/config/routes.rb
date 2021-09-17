Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :artworks, only: :index
  end

  # get ':user_id/artworks', to: 'artworks#index'

  resources :artworks, only: [:create, :destroy, :show, :update, :index]

  resources :artwork_shares, only: [:create, :destroy]

  # if we nest artworks under users
  # nest artwork index method -> artowrk associated to one particular user

  resources :comments, only: [:create, :destroy, :index]

end
