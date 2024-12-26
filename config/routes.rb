Rails.application.routes.draw do
  devise_for :users
  root 'clients#index'
  resources :clients, only: [:show, :new, :create, :edit, :update, :index]
  resources :client_files
end
