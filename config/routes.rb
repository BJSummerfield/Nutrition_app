Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

 
  namespace :api do
    get "/foods" => "foods#index"
    get "/foods/:ndbno" => "foods#show"

    post '/users' => 'users#create'

    post "/sessions" => "sessions#create"

    post "/consumptions" => 'consumptions#create'
  end
end
