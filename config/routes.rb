Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants
  resources :dishes
  resources :tabs, only: [:index, :show]
  resources :bill_dishes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
