Rails.application.routes.draw do
  resources :orders
  resources :users
  root 'users#index'
end
