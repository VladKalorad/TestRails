Rails.application.routes.draw do
  resources :subscriptions
  resources :author_books
  resources :books_genres
  resources :books
  resources :authors
  resources :subscribers
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
