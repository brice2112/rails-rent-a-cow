Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :cows, only: [:index, :show, :new, :create, :destroy] do
    collection do
      get :my_cows
    end
    resources :bookings, only: [:index, :create]
  end

  resources :bookings, only: [:update, :show] do
    collection do
      get :my_reservations
    end
  end

  get '/profile', to: 'profile#show', as: 'profile'

end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
