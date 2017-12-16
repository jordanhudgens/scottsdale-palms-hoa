Rails.application.routes.draw do
  resources :support_requests do
    resources :support_request_comments
  end

  resources :newsletters
  devise_for :users
  root to: 'static#home'
end
