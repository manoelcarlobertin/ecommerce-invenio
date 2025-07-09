Rails.application.routes.draw do
  get "home/index"
  get "system_requirements/index"
  get "system_requirements/show"
  get "system_requirements/new"
  get "system_requirements/edit"
  # Defines the root path route ("/")
  root 'home#index'
  resources :system_requirements
  resources :categories
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
