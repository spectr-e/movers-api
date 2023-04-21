Rails.application.routes.draw do
  
  resources :users
  resources :boxes
  resources :apartment_inventories
  resources :movers
  resources :apartment_sizes
  resources :inventories
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
  
  resources :bookings, only: [:index, :create, :show, :update, :destroy]
end
