Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  get 'pages/home'
  get 'pages/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  
  root 'pages#home'
end
