Rails.application.routes.draw do
  devise_for :users
  resources :users

  authenticated :user do
    root :to => 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end
  
  resources :conversations do
    resources :messages
  end

end
