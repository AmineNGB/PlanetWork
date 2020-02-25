Rails.application.routes.draw do
  devise_for :users
  root to: 'planets#index'

  resources :planets do
    resources :reservations
  end

  get 'reservations/new', to: 'reservations#new', as: :new_reservation
  get '/reservations', to: 'reservations#show'
  get 'reservations/:id/edit', to: 'reservations#edit', as: :edit_reservation

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
