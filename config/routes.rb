Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  get 'about', to: 'pages#about'
  resources :projects
  resources :blog_posts

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
