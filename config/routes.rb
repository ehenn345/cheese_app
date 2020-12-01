Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/cheeses" => "cheeses#index"
    post "cheeses" => "cheeses#create"
    get "/cheeses/:id" => "cheeses#show"
  end

end
