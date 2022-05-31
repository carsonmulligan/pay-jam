Rails.application.routes.draw do
  get 'tab_dishes/index'
  get 'tab_dishes/show'
  get 'tab_dishes/new'
  get 'tab_dishes/create'
  get 'tab_dishes/edit'
  get 'tab_dishes/update'
  get 'tab_dishes/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :restaurants
  resources :dishes
  resources :tabs, only: [:index, :show]
  resources :bill_dishes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
