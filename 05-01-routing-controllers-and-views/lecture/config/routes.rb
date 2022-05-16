# REMEMBER:
# when the client sends a request, Rails will look for a route matching their request in this file (`config/routes.rb`)
# this route will specify a CONTROLLER and an ACTION (controllers names are always in plural)
# rails will then go to `controllers/CONTROLLER_NAME_controller.rb` and look for the given action
# THEN rails will look for a template `app/views/CONTROLLER_NAME/ACTION_NAME.html.erb`

Rails.application.routes.draw do
  # verb '/PATH', to: 'CONTROLLER#ACTION
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # get '/', to: 'pages#home'
  root to: 'pages#home'
end
