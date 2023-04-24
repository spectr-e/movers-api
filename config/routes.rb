Rails.application.routes.draw do
  resources :movers , only:[:index, :create ,:edit, :show]
  root to: redirect('/healthcheck', status: 302)
  get "/healthcheck", to: proc { [200, {}, ["success"]] }
end
