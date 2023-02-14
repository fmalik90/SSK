Rails.application.routes.draw do
  devise_for :users

  root to: "flights#index"

  resources :flights, only: [:index, :show] do
    resources :bookings, only: [:show, :new, :create]
  end

  resources :users do
<<<<<<< HEAD
    resources :bookings, only: [:index, :show]
  end
  resources :flights, only: :destroy
=======
    resources :bookings, only: [:index, :show, :create]
  end
  resources :bookings, only: :destroy
>>>>>>> 51be0dc7100136683959929d76629b3fea71561c
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
