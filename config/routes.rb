Rails.application.routes.draw do
  # devise_for :customers
  devise_for :customers, :controllers => { registrations: 'registrations' }
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "products#index"
end
