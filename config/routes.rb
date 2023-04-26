Rails.application.routes.draw do
  # resources :movers , only:[:index, :create ,:edit, :show, :update ,:destroy]
  resources :users, only: %i[index create update destroy]
  resources :boxes, only: [:index]
  resources :apartments
  resources :inventories
  # resources :ratings, only: %i[index]
  resources :bookings, only: %i[create]
  patch "/bookings", to: "bookings#update"

  post "/login", to: "sessions#create"
  get "/profile", to: "users#show"
  
  root to: redirect("/healthcheck", status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
end
