Rails.application.routes.draw do
  resources :reviews
  resources :products

  resources :products, only: [:show] do
    resources :reviews, only: %i[show index]
  end

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "users#create"
  get "/me", to: "User#show"
  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#destroy"
end
