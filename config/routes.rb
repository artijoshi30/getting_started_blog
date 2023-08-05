Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
  namespace :api do
    namespace :v1 do
      resources :libraries, only: [:index]
    end
  end
end
