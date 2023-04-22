Rails.application.routes.draw do
  
  resources :users ,only: [:index , :show ,:create ,:update ,:destroy]
  resources :boxes
  resources :apartment_inventories
  resources :movers
  resources :apartment_sizes
  resources :inventories
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
end
