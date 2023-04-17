Rails.application.routes.draw do
  
  resources :bookings, only: [:index, :create, :show, :update, :destroy]
  
end
