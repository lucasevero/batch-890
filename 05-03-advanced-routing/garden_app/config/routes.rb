Rails.application.routes.draw do
  resources :gardens do
   resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# See all gardens
# See the details of a garden
# See all plants
# Add a new plant
# Delete a plant
