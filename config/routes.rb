Rails.application.routes.draw do
  resources :apartment_inventories
  resources :apartment_sizes
  resources :inventories
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
end
