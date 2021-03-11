Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pieces
  resources :users, only: :show
  resources :bookings, only: [:new, :create, :delete, :edit, :update]
end
