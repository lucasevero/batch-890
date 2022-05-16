Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "flats#index"
  get '/flats/:id', to: "flats#show" # Note that `:id` is a placeholder for anything passed in the request
end
