Rails.application.routes.draw do
  resources :consumer_accounts
  resources :banks
  resources :streets
  resources :consumers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
