Rails.application.routes.draw do
  resources :users
  resources :animal_kinds
  resources :pet_care_businesses
  resources :offered_services
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
