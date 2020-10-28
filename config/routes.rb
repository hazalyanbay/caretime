Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/information', to: 'pages#information'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tickets, only: [ :new, :index, :create, :edit, :update]
  resources :contacts, only: [:new, :create, :edit, :update]
  resources :chatrooms, only: :show do
     resources :messages, only: :create
  end
end
