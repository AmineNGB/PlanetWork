Rails.application.routes.draw do
  devise_for :users

  resources :planets
  root 'planets#index'

  get '/reservations', to: 'reservations#user_show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
