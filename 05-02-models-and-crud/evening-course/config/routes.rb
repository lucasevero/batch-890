Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb '/path', to: 'controller#action'
  get '/pets', to: 'pets#index'

  get '/pets/new', to: 'pets#new'
  post '/pets', to: 'pets#create'

  get '/pets/:id/edit', to: 'pets#edit'
  patch '/pets/:id', to: 'pets#update'

  get '/pets/:id', to: 'pets#show', as: 'pet'

  delete '/pets/:id', to: 'pets#destroy', as: 'delete_pet'

end
