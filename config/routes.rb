Rails.application.routes.draw do
  get 'restaurants/name'
  get 'restaurants/address'
  get 'restaurants/user:references'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
