# frozen_string_literal: true

Rails.application.routes.draw do
  resources :authors_books
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :genres
      resources :books
      resources :subscribers do
        resources :subscriptions
      end

      namespace :admin do
        resources :authors
        resources :genres
        resources :books
        resources :subscribers do
          resources :subscriptions
        end
        resources :subscriptions
      end
    end
  end

  resources :subscriptions
  resources :subscribers
  resources :authors
  resources :books
  resources :genres

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
