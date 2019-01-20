Rails.application.routes.draw do
  get 'welcome/index' # Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action.
  
  resources :articles # Instead of declaring separate routes for your index, show, new, edit, create, update and destroy actions, a resourceful route declares them in a single line of code.
  # A resourceful route provides a mapping between HTTP verbs and URLs to controller actions. 
  # creates 7 different routes in your application, all mapping to the Photos controller:

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'  #to map requests to the root of the application to the welcome controller's index action.
end
