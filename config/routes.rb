Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :flights, only: [:index, :show] do
    resources :bookings, only: [:show, :new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
