Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 # resources "places"

  # Defines the root path route ("/")
  
get root "places", to: "places#index"

end

 
  # get("/", { :controller => "articles", :action => "index" })


get("/places", :controller => "places", :action => "index") 



