Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants
  # resources :users, only: [:index, :show]
  # resources :flats, except: [:new, :create]

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  #
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post 'restaurants', to: 'restaurants#create'
  #
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch 'restaurants/:id', to: 'restaurants#update'
  #
  # delete 'restaurants/:id', to: 'restaurants#destroy'
end
