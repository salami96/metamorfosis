Rails.application.routes.draw do
  resources :patients
  resources :parents
  # root to: "home#index"
  devise_for :professionals

  resources :specialties
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
