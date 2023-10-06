Rails.application.routes.draw do
  resources :sightings
  resources :wild_lives
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
