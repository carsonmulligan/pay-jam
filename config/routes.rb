Rails.application.routes.draw do
  get 'bills/index'
  get 'bills/show'
  get 'bills/create'
  devise_for :users
  root to: 'pages#home'

  resources :restaurants
  resources :dishes, except: [:index]
  resources :tabs, only: [:index, :show] do
    resources :dishes, only: [:index]
    resources :tab_dishes, only: [:create, :destroy]
  end
  resources :bills, only: [:create, :show, :index] do
    resources :payments, only: :new
    resources :tab_dishes, only: [:index]
  end

  resources :bills_tab_dishes, only: [:index]

  resources :tab_dishes do
    member do
      post 'add_unit'
    end
  end

  # get 'test/:tab_dish_id', to: 'tab_dishes#destroy', as: :test
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
