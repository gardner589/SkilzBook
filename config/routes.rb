Rails.application.routes.draw do
  devise_for :users
  root to: 'skills#index'
  resources :skills do
    resources :builds
  end
  resources :builds do
    resources :comments
    resources :links
  end

end
