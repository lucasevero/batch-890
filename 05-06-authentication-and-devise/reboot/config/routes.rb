Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/path', to "CONTROLLER_NAME#ACTION"
  get '/', to: "pages#home"

  # # CRUD:
  # # READ
  # # - see a page with all the pets
  # get "/pets", to: "pets#index"

  # # CREATE
  # # Is a 2 step process
  # # 1. get a page with a form
  # get "/pets/new", to: "pets#new"
  # # 2. actually create the pet
  # post "/pets", to: "pets#create"

  # # UPDATE
  # # 1. form to update
  # get "/pets/:id/edit", to: "pets#edit"
  # # 2. actually updating
  # patch "/pets/:id", to: "pets#update"

  # # DELETE
  # delete "/pets/:id", to: "pets#destroy", as: "destroy_pet"

  # # - see a page with the details of a pet
  # get "/pets/:id", to: "pets#show", as: "pet"

  resources :pets
end

# INDEX
# SHOW
# NEW
# CREATE
# EDIT
# UPDATE
# DESTROY
