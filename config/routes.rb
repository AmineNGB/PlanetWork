Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users
  resources :planets do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:show, :edit, :update, :destroy]
  # get 'reservations/new', to: 'reservations#new', as: :new_reservation
  # get '/reservations', to: 'reservations#show'
  # get 'reservations/:id/edit', to: 'reservations#edit', as: :edit_reservation
  resources :users do
    resources :reservations, only: [:index]
    resources :planets, only: [:edit]
  end


  get '/profile', to: "users#profile", as: :profile
  get '/profile/:planet_id/edit', to: "users#edit", as: :test_amine


  root 'planets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
