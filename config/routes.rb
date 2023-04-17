Rails.application.routes.draw do
  resources :users
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
end
