Rails.application.routes.draw do
  devise_for :users
  resources :home, only: [:index]
  resources :tils

  root to: "home#index"
end
