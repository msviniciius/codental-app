# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  root 'clients#index'
  
  require 'sidekiq/web'
  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :clients, only: [:show, :new, :create, :edit, :update, :index]
  resources :client_files
  resources :appointments

  mount ActionCable.server => '/cable'
end
