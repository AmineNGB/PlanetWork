Rails.application.routes.draw do
  devise_for :users
  resources :planets do
    resources :reservations
  end

  get 'reservations/new', to: 'reservations#new', as: :new_reservation
  get '/reservations', to: 'reservations#show'
  get 'reservations/:id/edit', to: 'reservations#edit', as: :edit_reservation
  
  root 'planets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
