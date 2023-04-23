Rails.application.routes.draw do
  resources :users, only: %i[index create update destory]
  resources :boxes
  resources :apartment_inventories
  resources :movers
  resources :apartments
  resources :inventories
  resources :ratings, only: %i[index create show update destroy]
  resources :bookings, only: %i[index create show update destroy]

  post "/login", to: "sessions#create"
  get "/profile", to: "user#show"

  root to: redirect("/healthcheck", status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
  get '/quotation/:cost_to_move_boxes/:labour_costs/:distance/:rate_per_km', to: 'my_controller#calculate_quotation'
end
