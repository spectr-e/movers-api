Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :boxes
  resources :apartment_inventories
  resources :apartment_sizes
  resources :inventories
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
  resources :ratings, only: [:index, :create, :show, :update, :destroy]
  
  resources :bookings, only: [:index, :create, :show, :update, :destroy]
end
