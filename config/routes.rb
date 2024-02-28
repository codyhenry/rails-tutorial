Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"

  #  this creates all standard CRUD routes for a model
  # get "/articles", to: "articles#index"
  # get "articles/:id", to: "articles#show"
  # resources :articles

  # add route to navigate from articles to comments
  resources :articles do
    # comments are a nested resource within articles
    resources :comments
  end


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
