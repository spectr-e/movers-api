Rails.application.routes.draw do
  resources :users
  resources :boxes
  resources :apartment_inventories
  resources :movers
  resources :apartments
  resources :inventories
  resources :ratings, only: %i[index create show update destroy]
  resources :bookings, only: %i[index create show update destroy]

  post '/login', to: 'sessions#create'
  
  root to: redirect("/healthcheck", status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }

end
