Rails.application.routes.draw do
  get 'users/index'

  devise_for :users

  resources :users do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [ :index, :show ] do
    resources :reviews, only: :create
  end

  resources :languages

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  resources :bookings do
    resources :chatrooms, only: [:show, :create] do
      resources :messages, only: :create
    end
  end

  get '/my_bookings', to: "bookings#my_bookings"
  get '/confirm/:id', to: "bookings#confirm"
  root to: "pages#home"

  # Translation API routes below
  get 'translations/index',to: "translations#index"
  get 'translations/translate'
  post 'translations/translate', to: "translations#translate", as: :translate
end
