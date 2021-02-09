Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  get 'home/index'
  root to: "home#index"

  resources :items do
    resources :user_items, only: [:index, :create, :new, :index]
  end
end
