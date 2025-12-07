Rails.application.routes.draw do
  # resource :registration
  # devise_for :users
  root 'pages#home'

  get 'up' => 'rails/health#show', as: :rails_health_check
  
  resources :projects#, only: [:index]
  resources :articles#, only: [:index]
  resources :books#, only: [:index]
  resource :session
end
