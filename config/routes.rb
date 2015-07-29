SoftwearDevise::Engine.routes.draw do
  devise_for :users, class_name: "SoftwearDevise::User", module: :devise

  resources :users

  root to: "home#index"
end
