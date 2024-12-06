Rails.application.routes.draw do
  namespace :admin do
    resources :orders
    resources :products do
      resources :stocks
    end
    resources :catagories
  end
  devise_for :admins

  get "up" => "rails/health#show", as: :rails_health_check
  
  root "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end


  resources :catagories, only: [:show]
  resources :products, only: [:show]

  get "admin" => "admin#index"
  


end
