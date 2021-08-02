Rails.application.routes.draw do
  resources :people, only: %i[index update]
  resources :flights
  resources :rides
  resources :shuttles

  post 'login', to: 'authentication#login'
end
