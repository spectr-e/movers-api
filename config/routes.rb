Rails.application.routes.draw do
  
  resources :users
  resources :boxes
  resources :apartment_inventories
  resources :movers
  resources :apartment_sizes
  resources :inventories
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
  resources :ratings, only: [:index, :create, :show, :update, :destroy]
  
  resources :bookings, only: [:index, :create, :show, :update, :destroy]
  get '/quotation/:cost_to_move_boxes/:labour_costs/:distance/:rate_per_km', to: 'my_controller#calculate_quotation'

end
