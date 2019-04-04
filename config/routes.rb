Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

 
  namespace :api do
    get "/foods" => "foods#index"
    get "/foods/:ndbno" => "foods#show"

    post '/users' => 'users#create'
  end
end
