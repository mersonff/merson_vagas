Rails.application.routes.draw do
  resource :applicants, only: [:index, :new, :create]
  resources :positions
  resources :companies, only: [:new, :edit, :update, :create]
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
