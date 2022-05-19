Rails.application.routes.draw do
  resources :gardens do
   resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end
end

# See all gardens
# See the details of a garden
# See all plants
# Add a new plant
# Delete a plant

# Add a tag to a plant
