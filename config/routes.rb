Rails.application.routes.draw do
  root to: 'static_pages#home'
  resources :static_pages, only: [:home]
  resources :students do
    resources :reports, only: [:show, :edit, :update]
  end
  
  resources :reports, only: [:index]
end