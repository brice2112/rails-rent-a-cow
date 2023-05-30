Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :cows, only: [:index, :show, :new, :create, :delete] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:update, :delete, :show] do
    collection do
      get :my_reservations
    end
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
