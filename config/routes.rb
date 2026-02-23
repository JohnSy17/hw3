Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/", {:controller => "places", :action => "index"})
  
  #Declare all the resources for the places controller
  resources "places"

  #Declare all the resources for the entries controller
  resources "entries"

end
