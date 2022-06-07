Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :users do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings
  get '/my_bookings', to: "bookings#my_bookings"
  root to: "pages#home"
end
