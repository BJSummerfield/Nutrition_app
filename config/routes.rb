Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

 
  namespace :api do
    get "/foods" => "foods#index"
    get "/foods/:ndbno" => "foods#show"

    post '/users' => 'users#create'

    post "/sessions" => "sessions#create"


    get "/consumptions" => 'consumptions#index'
    get "/consumptions/:id" => 'consumptions#show'
    post "/consumptions" => 'consumptions#create'
    delete "/consumptions/:id" => 'consumptions#destroy'

    get '/groups' => "groups#index"

    get '/diets' => 'diets#show'
    post "/diets" => 'diets#create'
    patch '/diets' => 'diets#update'



  end
end
