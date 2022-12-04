Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :products

  get "/products/:product_id/reviews", to: "products#reviews_index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
