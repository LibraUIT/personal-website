Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }, path: '',
                     module: :users,
                     path_names: {
                       sign_up: :signup,
                       sign_in: :login,
                       sign_out: :logout
                     }
  root 'home#index'
  resources :blog
  get :about, to: 'about#index'
  get :contact, to: 'contact#index'
  namespace :admin do
    root 'dashboard#index'
    resources :dashboard
  end
end
