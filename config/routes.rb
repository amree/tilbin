Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :tils
end
