Rails.application.routes.draw do
  resources :reviews
  resources :products

  resources :products, only: [:show] do
    resources :reviews, only: %i[show index]
  end

  get "/sessions", to: "sessions#index"
  post "/login", to: "sessions#login"
  get "/me", to: "User#show"
  get "logout", to: "session#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
