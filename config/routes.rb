Rails.application.routes.draw do
  resources :newsletters
  devise_for :users
  root to: 'static#home'
end
