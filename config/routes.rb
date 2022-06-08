Rails.application.routes.draw do
  get 'users/index'

  devise_for :users

  resources :users do
    resources :bookings, only: [:new, :create]
  end
  resources :languages
  resources :bookings
  get '/my_bookings', to: "bookings#my_bookings"
  get '/confirm/:id', to: "bookings#confirm"
  root to: "pages#home"
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
