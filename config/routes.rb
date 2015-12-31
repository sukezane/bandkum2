Rails.application.routes.draw do
  devise_for :users
  devise_for :users
  resources :users
  root :to => 'users#index'
end
