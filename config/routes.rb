Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cows, only: [index, show, create, delete] do
    resources :bookings, only: [index, show, create, edit, update]
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
