Rails.application.routes.draw do
  resources :reviews
  resources :users

  resources :products, only: [:show] do
    resources :reviews, only: %i[show index]
  end

  get "/cookie_click", to: "session/click"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
