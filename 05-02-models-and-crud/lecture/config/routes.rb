Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  # CRUD
  # Create, Read, Update, Delete
  # verb '/path', to: "controller#action"
  #
  # Read all the restaurants
  # get '/restaurants', to: "restaurants#index"
  #
  # # Create a restaurant
  # get '/restaurants/new', to: "restaurants#new"
  # post '/restaurants', to: "restaurants#create"
  #
  # # Read a specific restaurant
  # get '/restaurants/:id', to: "restaurants#show"
  # # NOTE: the show is at the end as we don't want rails to put 'new' as a value for :id

  # # Update a restaurant
  # get '/restaurants/:id/edit', to: "restaurants#edit"
  # patch '/restaurants/:id', to: "restaurants#update"

  # # Delete a restaurant
  # delete '/restaurants/:id', to: "restaurants#destroy"

  # # BUT instead of all that ☝, you can use:
  resources :restaurants
  # # or if you don't want them all:
  # resources :restaurants, only: [:index, :show, ...]
end
