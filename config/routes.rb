Rails.application.routes.draw do
  devise_for :users

  root to: "flights#index"

  resources :flights, only: [:index, :show] do
    resources :bookings, only: [:show, :new, :create]
  end

  resources :users do
    resources :bookings, only: [:index, :show, :create]
  end
  resources :bookings, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
