Rails.application.routes.draw do
  root 'home#index'
  resources :blog
  get :about, to: 'about#index'
  get :contact, to: 'contact#index'
  namespace :admin do
    root 'dashboard#index'
    resources :dashboard
  end
end
