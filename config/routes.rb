Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :support_requests do
    resources :support_request_comments
  end

  resources :newsletters
  devise_for :users
  get 'contact-us', to: 'static#contact_us', as: 'contact_us'
  root to: 'static#home'
end
