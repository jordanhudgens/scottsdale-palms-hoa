Rails.application.routes.draw do
  resources :support_requests
  resources :newsletters
  devise_for :users
  root to: 'static#home'
end
