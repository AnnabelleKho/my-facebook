Rails.application.routes.draw do
  resources :groups do
    member do
      get :join, :leave
    end
  end
  resources :status_updates
  resources :profiles
  devise_for :users
  root 'home#index'

end
