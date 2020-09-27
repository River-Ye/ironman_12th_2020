require 'resque/server'
require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  resources :orders
  resources :users
  mount Resque::Server.new, at: '/resque'
  mount Sidekiq::Web => '/sidekiq'
  root 'users#index'
end
