Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pieces do
  	resources :bookings, only: [:new, :create, :delete, :edit, :update]
  end

  get 'profile', to: 'users#profile'
end
