Rails.application.routes.draw do
  devise_for :users
  root to: 'planets#index'

  resources :planets do
    resources :reservations
  end

  get '/reservations', to: 'reservations#user_show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
