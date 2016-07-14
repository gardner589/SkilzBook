Rails.application.routes.draw do
  devise_for :users
  root to: 'skills#index'
  resources :skills do
    resources :builds
  end
  # AM: Nothing wrong with this set-up, but curious why you went with this structure (i.e., nested builds inside of skills, then comments and links inside of builds separately).
  resources :builds do
    resources :comments
    resources :links
  end

end
