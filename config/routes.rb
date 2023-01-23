Rails.application.routes.draw do
  get 'todotasks/destroyall', to:"todotasks#destroyall"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "todotasks#index"
  resources :todotasks
end
