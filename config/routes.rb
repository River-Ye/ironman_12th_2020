require 'resque/server'

Rails.application.routes.draw do
  resources :orders
  resources :users
  mount Resque::Server.new, at: '/resque'
  root 'users#index'
end
