Rails.application.routes.draw do
  devise_for :users

  root to: "flights#index"

  resources :flights, only: %i[new create edit udpate index show] do
    resources :bookings, only: %i[show new create]
  end

  resources :users do
    resources :bookings, only: %i[index show create]
  end
  resources :bookings, only: :destroy
end
