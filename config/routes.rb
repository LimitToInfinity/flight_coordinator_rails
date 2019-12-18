Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :people, only: [:index, :update]
  resources :flights
  resources :rides
  resources :shuttles
  
  post "login", to: "authentication#login"
end
