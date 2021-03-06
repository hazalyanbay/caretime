Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  get '/information', to: 'pages#information'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tickets, except: :destroy
  resources :contacts, only: [:new, :create, :edit, :update, :show]
  resources :chatrooms, only: :show do
     resources :messages, only: :create
  end
end
