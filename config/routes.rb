Rails.application.routes.draw do
  # resource :registration
  # devise_for :users
  resource :session

  resources :articles
  resources :projects
  resources :books

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
