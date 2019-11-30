Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :people
  resources :flights
  resources :rides
  resources :shuttles
end
